@if "%~1"=="" (
    echo "引数無し"
) else (
    @REM snssharecount > temp.json
    @REM move temp.json sns_count_cache.json
    @REM echo "refresh sns_count_cache.json"
    ga > ga_cache.json
    echo "refresh ga_cache.json"

    git add .
    git commit -m "%~1"
    git push origin HEAD
    node_modules\.bin\hexo g --force
    cd public
    git add .
    git commit -m "%~1"
    git push origin HEAD
    cd ../
)
