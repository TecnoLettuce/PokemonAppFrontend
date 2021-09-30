export class Pokemon {

    public Id : number;
    public Name : string;
    public Type1 : string;
    public Type2 : string;
    public Generation : number;
    public Imx_location : string;

    constructor(Id : number, Name: string, Type1 : string, Type2: string, Generation: number, Imx_location: string) {
        this.Id = Id;
        this.Name = Name;
        this.Type1 = Type1;
        this.Type2 = Type2;
        this.Generation = Generation;
        this.Imx_location = Imx_location;
    }

}