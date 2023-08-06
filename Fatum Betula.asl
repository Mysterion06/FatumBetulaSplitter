//Credits Mysterion352
//Commissioned by H1atus

state("Fatum Betula")
{
    byte loadingScene: "UnityPlayer.dll", 0x015F7C00, 0x30, 0x9778;
    int area: "UnityPlayer.dll", 0x16847A8;
    int menuStart: "UnityPlayer.dll", 0x16C45BC;        //menu 7586750; load 7588272
    int menuStart2: "UnityPlayer.dll", 0x1641FC0;       //menu 36; load 37
}

start
{
    if(current.area == 131 && old.area != 131){
        return true;
    }
}

split
{
    //Final Split
    if(current.area == 142 && old.area != 142){
        return true;
    }
}

isLoading
{
    if(current.loadingScene == 1){
        return true;
    } else{
        return false;
    }
}

/*
startup
{
    Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
    vars.Helper.GameName = "Fatum Betula";
    vars.Helper.LoadSceneManager = true;
    vars.Helper.AlertLoadless();
}

init
{
    vars.Helper.TryLoad = (Func<dynamic, bool>)(mono => 
    {
        var gm = mono["TitleScreen"];

        vars.Helper["LoadingScreenTest"] = gm.Make<bool>("gameStarted");           
        return true;
    });
}*/