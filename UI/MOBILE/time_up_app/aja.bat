@echo off

mkdir lib\core\constants
mkdir lib\core\exceptions
mkdir lib\core\utils
mkdir lib\core\theme

mkdir lib\data\datasources
mkdir lib\data\models

mkdir lib\domain\entities
mkdir lib\domain\repositories
mkdir lib\domain\usecases

mkdir lib\presentation\screens\home
mkdir lib\presentation\screens\profile
mkdir lib\presentation\screens\settings
mkdir lib\presentation\screens\stats
mkdir lib\presentation\widgets

mkdir lib\services
mkdir lib\routes

echo. > lib\main.dart

:: Create .gitkeep files
echo. > lib\core\constants\.gitkeep
echo. > lib\core\exceptions\.gitkeep
echo. > lib\core\utils\.gitkeep
echo. > lib\core\theme\.gitkeep

echo. > lib\data\datasources\.gitkeep
echo. > lib\data\models\.gitkeep

echo. > lib\domain\entities\.gitkeep
echo. > lib\domain\repositories\.gitkeep
echo. > lib\domain\usecases\.gitkeep

echo. > lib\presentation\screens\home\.gitkeep
echo. > lib\presentation\screens\profile\.gitkeep
echo. > lib\presentation\screens\settings\.gitkeep
echo. > lib\presentation\screens\stats\.gitkeep
echo. > lib\presentation\widgets\.gitkeep

echo. > lib\services\.gitkeep
echo. > lib\routes\.gitkeep

echo Flutter project structure created successfully!