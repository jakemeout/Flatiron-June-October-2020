// Write your solution in this file!

const driver = {}

function updateDriverWithKeyAndValue(driverObject, key, value) {

    const newObj = { ...driverObject }; 
    newObj[key] = value;
    return newObj
}

function destructivelyUpdateDriverWithKeyAndValue(driverObject, key, value){
    driverObject[key] = value;
    return driverObject
}

function deleteFromDriverByKey(driverObject, key){
    const  newObj = { ...driverObject};

    delete newObj[key]
    return newObj
}

function destructivelyDeleteFromDriverByKey(driverObject, key){

    delete driverObject[key];

    return driverObject;
}



updateDriverWithKeyAndValue()
destructivelyUpdateDriverWithKeyAndValue()
deleteFromDriverByKey()
destructivelyDeleteFromDriverByKey()