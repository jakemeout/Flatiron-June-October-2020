// Your code goes here
document.addEventListener("DOMContentLoaded", function() {
    domManipulation()
  });

// document  
//   console.log(
//     "This console.log() fires when index.js loads - before DOMContentLoaded is triggered"
//   );

  function domManipulation() {
    document.getElementById( "text" )
      .innerHTML = "This is really cool!";
  }