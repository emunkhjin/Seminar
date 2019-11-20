<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="api.aspx.cs" Inherits="Seminar.api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        
       <div id="player">
<table>
<tr>
<th>Player Name</th>
<td id="player_name"></td>
</tr>
<tr>
<th>Season</th>
<td id="season"></td>
</tr>
<tr>
<th>Points Per Game</th>
<td id="ppg"></td>
</tr>
<tr>
<th>Assists Per Game</th>
<td id="assist"></td>
</tr>
<tr>
<th>Rebound Per Game</th>
<td id="rebound"></td>
</tr>
</table>
</div>


        <script>
            function button_for_shopping_cart_api(playerid) {
                $.ajax({
                    type: 'GET',
                    headers: { 'Access-Control-Allow-Origin': 'https://stats.nba.com/' },
                    url: "https://stats.nba.com/stats/commonplayerinfo",
                    data: { 'playerid': player_id },
                    contentType: 'application/json; charset=UTF-8',
                    dataType: 'jsonp',
                    crossDomain: true,
                    async: true,
                    success: function (msg) {
                        document.getElementById('player_name').innerHTML = msg.resultSets[1].rowset[0][1];
                        document.getElementById('season').innerHTML = msg.resultSets[1].rowset[0][2];
                        document.getElementById('ppg').innerHTML = msg.resultSets[1].rowset[0][3];
                        document.getElementById('assists').innerHTML = msg.resultSets[1].rowset[0][4];
                    },
                    error: function (xhr, textStatus, errorThrown) {
                        alert('Card Type Error');
                        alert(xhr.responseText);
                    }
                });


            };
            $(document).ready(function () {
                button_for_shopping_cart_api(202695);
            });
</script>   
        
    </form>

</body>
</html>
