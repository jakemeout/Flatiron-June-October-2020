
//cards
function writeCards(names, eventName) {
    let cards = []
for (let i = 0; i < names.length; i++){ 
  cards.push(`Thank you, ${names[i]}, for the wonderful ${eventName} gift!`)
    }
    return cards
};

//countdown 
function countDown(x){
    let num = x;
    while (num > -1) {
      console.log(num --);
      } 
    };