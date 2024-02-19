class Api{
  late String localhost = 'http://192.168.43.18:3000/'; //192.168.43.18
  late String hostapi = '${localhost}api/';

  //User Authentication
  late final register = '${hostapi}auth/register';
  late final login = '${hostapi}auth/login';

}