class Polygon {
     constructor(num){
         this.num = num;
     }

    get countSides(){
        return this.num.length
    }

    get perimeter(){
        const sum = (accumulator, currentValue) => accumulator + currentValue;
        return this.num.reduce(sum)
    }
}

class Triangle extends Polygon {


    get isValid(){
         if ((this.num[0] + this.num[1] > this.num[2]) && (this.num[1] + this.num[2] > this.num[0]) && (this.num[2] + this.num[0] > this.num[1])) {
            return true;
         } else {
             return false
         }
     }
}

class Square extends Polygon {

    get isValid(){
        if((this.num[0] === this.num[1]) && (this.num[1] === this.num[2]) && (this.num[3] === this.num[0])){
            return true;
        } else {
            return false
        }
    }

    get area(){
        return this.num[0] * this.num[1]
    }

}