# (\w+)\t(\w+)
#     [PSCustomObject]@{CVS = "$1";GIT = "$2"}

$repos = @(
    # [PSCustomObject]@{CVS = "ACIS_2017_src";GIT = "ACIS_2017_src"}
    # [PSCustomObject]@{CVS = "ACIS_2018_src";GIT = "ACIS_2018_src"}
    # [PSCustomObject]@{CVS = "ACIS_2019_for_MacroReference";GIT = "ACIS_2019_for_MacroReference"}
    # [PSCustomObject]@{CVS = "ACIS_2019_src";GIT = "ACIS_2019_src"}
    # [PSCustomObject]@{CVS = "ACIS_R17_src";GIT = "ACIS_R17_src"}
    # [PSCustomObject]@{CVS = "ACIS_R19_src";GIT = "ACIS_R19_src"}
    # [PSCustomObject]@{CVS = "ACIS_R20_src";GIT = "ACIS_R20_src"}
    # [PSCustomObject]@{CVS = "AR6";GIT = "AR6"}
    # [PSCustomObject]@{CVS = "Bridge2";GIT = "Bridge2"}
    # [PSCustomObject]@{CVS = "Bridge3";GIT = "Bridge3"}
    # [PSCustomObject]@{CVS = "BSDFWizard";GIT = "BSDFWizard"}
    # [PSCustomObject]@{CVS = "carina";GIT = "carina"}
    # [PSCustomObject]@{CVS = "cvs_testbed_001";GIT = "cvs_testbed_001"}
    # [PSCustomObject]@{CVS = "CVS_TRACEPRO";GIT = "CVS_TRACEPRO"}
    # [PSCustomObject]@{CVS = "CVS_UTIL";GIT = "CVS_UTIL"}
    # [PSCustomObject]@{CVS = "DevProjects";GIT = "DevProjects"}
    # [PSCustomObject]@{CVS = "ELK";GIT = "ELK"}
    # [PSCustomObject]@{CVS = "ELK_KCM";GIT = "ELK_KCM"}
    # [PSCustomObject]@{CVS = "FromCygwin";GIT = "FromCygwin"}
    # [PSCustomObject]@{CVS = "GeometryModelerTesting";GIT = "GeometryModelerTesting"}
    # [PSCustomObject]@{CVS = "Ideal_PG";GIT = "Ideal_PG"}
    # [PSCustomObject]@{CVS = "INC";GIT = "INC"}
    # [PSCustomObject]@{CVS = "keybuilder_win32";GIT = "keybuilder_win32"}
    # [PSCustomObject]@{CVS = "KEYWRITER";GIT = "KEYWRITER"}
    # [PSCustomObject]@{CVS = "KubotekTests";GIT = "KubotekTests"}
    # [PSCustomObject]@{CVS = "LAMBDA";GIT = "TracePro"}
    # [PSCustomObject]@{CVS = "lambda_docs";GIT = "lambda_docs"}
    # [PSCustomObject]@{CVS = "LAMBDA__bak";GIT = "LAMBDA__bak"}
    # [PSCustomObject]@{CVS = "Lamps_and_Bulbs";GIT = "Lamps_and_Bulbs"}
    # [PSCustomObject]@{CVS = "LensSpec80X";GIT = "LensSpec80X"}
    # [PSCustomObject]@{CVS = "mdb2sqlite";GIT = "mdb2sqlite"}
    # [PSCustomObject]@{CVS = "OSLO";GIT = "OSLO"}
    # [PSCustomObject]@{CVS = "oslo_testsuite";GIT = "oslo_testsuite"}
    # [PSCustomObject]@{CVS = "PrivateFileCopier";GIT = "PrivateFileCopier"}
    # [PSCustomObject]@{CVS = "RayIntersection";GIT = "RayIntersection"}
    # [PSCustomObject]@{CVS = "RAYVIZ";GIT = "RAYVIZ"}
    # [PSCustomObject]@{CVS = "ReleaseManagement";GIT = "ReleaseManagement"}
    # [PSCustomObject]@{CVS = "ReleaseManagement_50";GIT = "ReleaseManagement_50"}
    # [PSCustomObject]@{CVS = "SafeNetKeyWriter";GIT = "SafeNetKeyWriter"}
    # [PSCustomObject]@{CVS = "SchemeScanner";GIT = "SchemeScanner"}
    # [PSCustomObject]@{CVS = "scmedit";GIT = "scmedit"}
    # [PSCustomObject]@{CVS = "SettingsDlg";GIT = "SettingsDlg"}
    # [PSCustomObject]@{CVS = "Shared_UnitTestsT";GIT = "Shared_UnitTestsT"}
    # [PSCustomObject]@{CVS = "SikuliXScripts";GIT = "SikuliXScripts"}
    # [PSCustomObject]@{CVS = "SolidWorksAddin";GIT = "SolidWorksAddin"}
    # [PSCustomObject]@{CVS = "Source";GIT = "Source"}
    # [PSCustomObject]@{CVS = "SQLite3GUI";GIT = "SQLite3GUI"}
    # [PSCustomObject]@{CVS = "SQLiteGUI";GIT = "SQLiteGUI"}
    # [PSCustomObject]@{CVS = "SWA_TESTCVS";GIT = "SWA_TESTCVS"}
    # [PSCustomObject]@{CVS = "SWPLUGIN";GIT = "SWPLUGIN"}
    # [PSCustomObject]@{CVS = "TBBmalloc";GIT = "TBBmalloc"}
    # [PSCustomObject]@{CVS = "TpbCoverage";GIT = "TpbCoverage"}
    # [PSCustomObject]@{CVS = "TracePro70_Installer";GIT = "TracePro70_Installer"}
    # [PSCustomObject]@{CVS = "TraceProBridge70_Installer";GIT = "TraceProBridge70_Installer"}
    # [PSCustomObject]@{CVS = "TraceProHelpStudio";GIT = "TraceProHelpStudio"}
    # [PSCustomObject]@{CVS = "TraceProMessageUtil";GIT = "TraceProMessageUtil"}
    # [PSCustomObject]@{CVS = "TraceProModels";GIT = "TraceProModels"}
    # [PSCustomObject]@{CVS = "TraceProProperties";GIT = "TraceProProperties"}
    # [PSCustomObject]@{CVS = "TraceProUtility4";GIT = "TraceProUtility4"}
    # [PSCustomObject]@{CVS = "tracepro_setup_for_web_cd";GIT = "tracepro_setup_for_web_cd"}
    # [PSCustomObject]@{CVS = "TracePro_StartT";GIT = "TracePro_StartT"}
    # [PSCustomObject]@{CVS = "tracepro_testsuite";GIT = "tracepro_testsuite"}
    # [PSCustomObject]@{CVS = "UTIL";GIT = "UTIL"}
    # [PSCustomObject]@{CVS = "utility_testsuite";GIT = "utility_testsuite"}
) 

# Copy-Item -Path "\\CVS-03\cvsrepos" -Destination "cvs" -Recurse -Force -Verbose

foreach ($repo in $repos) {

    echo "CVS_FOLDER=$($repo.CVS)" | out-file -encoding ASCII .env
    docker compose up migrate
    docker compose down

    $outputPath = Get-ChildItem -Path "output\$($repo.CVS)*"
    $gitPath = Get-ChildItem -Path "$outputPath\*.git"
    Copy-Item -Path $gitPath -Destination "\\EINSTEIN\Git\$($repo.GIT).git" -Recurse -Force -Verbose
    Remove-Item $outputPath -Recurse -Force
}