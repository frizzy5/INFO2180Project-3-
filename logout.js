// JavaScript File
$(document).ready(function(){
    
    $("logout").click(function(){
    $.get("logout.php", function(){
        alert("Successfully logged out");
    });
});
});