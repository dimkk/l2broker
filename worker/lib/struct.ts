interface IRawSeller {
	name:string;
	instances: IRawSellerInstances[];
}
interface IRawSellerInstances{
	coords:ICoords;
	zoneId:string;
	date:Date;
	items: IRawSellerInstancesItems[];
}
interface ICoords{
	x:string;
	y:string;
	z:string;
}
interface IRawSellerInstancesItems{
	id:number;
	q:number;
	price:number;
}

interface IItem{
	id:number;
	imageUrl:string;
	title:string;
	description:string;
	sellers: IItemSellers[];
}

interface IItemSellers{
	coords: ICoords;
	zoneId:string;
	date:Date;
	q:number;
	price:number;
	name:string;
}

interface IRawSellerFromFile{
	name:string;
	coords:ICoords;
	zoneId:string;
	date:Date;
	items:IRawSellerInstancesItems[];
}