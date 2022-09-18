use colorsys::{Rgb, Hsl, ColorAlpha};

fn main(){
    for i in 0..10 {
        let rgb: Rgb = (245.0,152.0,53.0).into();
        let hsl Hsl::from(&rgb)
        println!("{:?}", rgb)
    }
}
