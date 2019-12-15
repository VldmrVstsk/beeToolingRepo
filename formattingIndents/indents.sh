
echo "\n"
echo "Script run"
echo "------------------------"
echo "\n"

# : '
# 	cd, cd ProjectFolder необходимо временно для выхода в рут и вхождения в папке с проектами (всеми проектами)
# 	в будущем надо будет скрипт помещать в папку с проектом? 
# '
# cd

# cd ProjectFolder

: '
	текущая директория
'
currentDirectory=$(pwd)
echo $currentDirectory

: '
	Директория конфиг файла .swiftformat
'
configFile=${currentDirectory}/formattingIndents/swiftformat-rules.swiftformat
echo $configFile

: '
	паттерн поиска для свифтовых файлов
'
filePattern="*.swift"

: '
	Массив путей для свифтовых файлов
'
swiftFilePaths=()

isExistSwiftFormat() {
	echo "Check swift format"
	if which swiftformat >/dev/null; then
		return 0
	else
		return 1
	fi
}

findSwiftFiles() {
	swiftFilePaths=$(find . -name "$filePattern" -not -path "*/Carthage/*")
	echo "\n"
	echo "Count file with: ${#swiftFilePaths}"
}

startFormatting() {
	echo "Start formatting files"

	for path in $swiftFilePaths; do 
		swiftformat $path --config $configFile
	done

	echo "End formatting files"
}

if isExistSwiftFormat; then 
	echo "swift format exist"
	findSwiftFiles
	startFormatting
else 
	echo "Не смог найти утилитку swiftformat."
	echo "https://github.com/nicklockwood/SwiftFormat"
fi

echo "\n"
echo "------------------------"
echo "Script end"