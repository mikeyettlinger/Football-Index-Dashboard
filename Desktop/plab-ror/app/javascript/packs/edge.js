

const express = require('express')
const nodefetch = require('node-fetch')

var url = "https://api-prod.footballindex.co.uk/portfolio";
var headers = {
  "Accept": "application/json",
  "Content-Type": "application/json",
  "Host":"api-prod.footballindex.co.uk",
  "x-access-token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhcnJ5YWNodXJjaGlsbEBnbWFpbC5jb20iLCJpZCI6NDU3OTc3LCJncm91cCI6InVzZXJzIiwiZGlzcGxheU5hbWUiOiJIYXJyeSBDIiwiaWF0IjoxNTkzNTk5MDQzfQ.6Bv67lhyf1DuWzbJp68oYqf5tGxSXBaMnOZF1fj79dI"
};

function portfolio_stats(){
  nodefetch(url, {method: 'GET', headers: headers}).then(
    function(response){
      response.json().then(function(data){

        //INTERACT WITH THE DATA
        console.log(data)
        document.getElementById('portfolio-stats').innerHTML = data


      }).catch(function(err){console.log("Fetch Error :-S", err);
    });
  });
};


console.log("hi")
