


class BarData{
  final double sundayAmout;
  final double mondayAmount;
  final double tuesdayAmount;
  final double wednesdayAmount;
  final double thursdayAmount;
  final double fridayAmount;
  final double saturdayAmpout;

  BarData({
    required this.sundayAmout,
    required this.mondayAmount,
    required this.tuesdayAmount,
    required this.wednesdayAmount,
    required this.thursdayAmount,
    required this.fridayAmount,
    required this.saturdayAmpout
  
    });

    List <Individualbar>  barData = [];

    void initializeBarData ()
    {
      barData =
      [
        Individualbar(x: 0, y: sundayAmout),
        Individualbar(x: 1, y: mondayAmount),
        Individualbar(x: 2, y: tuesdayAmount),
        Individualbar(x: 3, y: wednesdayAmount),
        Individualbar(x: 4, y: thursdayAmount),
        Individualbar(x: 5, y: fridayAmount),
        Individualbar(x: 6, y: saturdayAmpout),
       

      ];
          

    }

   

}

 
  BarData mybar = BarData(
          sundayAmout: weeklysummary[0],
          mondayAmount: weeklysummary[1], 
          tuesdayAmount: weeklysummary[2], 
          wednesdayAmount: weeklysummary[3], 
          thursdayAmount: weeklysummary[4],
            fridayAmount: weeklysummary[5], 
            saturdayAmpout: weeklysummary[6],
            );

           


class Individualbar {
  final int x;
  final double y;


  Individualbar({ required this.x,required this.y});
}



List <double>  weeklysummary = 
[
  5.7,
  6.8,
  7.8,
  5.3,
  7.5,
  3.2
];

