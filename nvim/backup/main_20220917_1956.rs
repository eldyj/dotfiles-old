use colorsys::{Rgb, Hsl};

fn main(){
    for i in 0..10 {
        let mut rgb: Rgb = (245.0,152.0,53.0).into();
        let mut hsl = Hsl::from(&rgb);
        println!("{:?}", hsl.units);
    }
}
