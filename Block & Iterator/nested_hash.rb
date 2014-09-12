dbl_hash = [
    {"Chicago"=>{
        "nickname"=>"The Windy City",
        "state"=>"Illinois",
        "area in sq. mi."=> 234.0}},
    "New York City"=>{
        "nickname"=>"The Big Apple",
        "state"=>"New York",
        "area in sq. mi."=> 468.9}
]
p dbl_hash[0]['Chicago']
p dbl_hash.fetch('Chicago')