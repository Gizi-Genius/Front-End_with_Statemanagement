class Api{
  late String localhost = 'http://192.168.1.4:3000/';
  late String hostapi = '${localhost}api/';

  //User Authentication
  late final register = '${hostapi}auth/register';
  late final login = '${hostapi}auth/login';

}