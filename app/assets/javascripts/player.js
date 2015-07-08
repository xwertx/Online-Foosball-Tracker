$(document).ready(function () {
    document.getElementById('new_match').addEventListener('submit', function (e) {
        var sel_1 = $("select#match_match_edits_attributes_0_player_id option:selected").val();
        var sel_2 = $("select#match_match_edits_attributes_1_player_id option:selected").val();
        if (sel_1 == sel_2) {
            alert("You can select this player twice!");
            e.preventDefault();
        }
    }, false);
});