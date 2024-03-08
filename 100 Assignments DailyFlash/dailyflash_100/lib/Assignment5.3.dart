import 'package:flutter/material.dart';

class AssignmentW extends StatefulWidget {
  const AssignmentW({super.key});

  @override
  State<AssignmentW> createState() => _AssignmentWState();
}

class _AssignmentWState extends State<AssignmentW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment5.3"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(10, 10),
                  ),
                ],
                border: Border.all(color: Colors.red),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Image.network(
                    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhYZGBgaGhocGRoaHBgaHBwaGBkcHBwcGhgcIS4lHCErIRoYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQrISs0NDYxNDQ0NDY0NDQ0NDQ0NjQ0NDE1NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYBB//EAEYQAAIBAgQDBAYGBgkEAwEAAAECEQADBBIhMQUiQQZRYXETMkKBkbEUUnKhwdEHFSNi4fAzNHOCkqKys9IWk8LxU1SUQ//EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAApEQACAgICAQMEAQUAAAAAAAAAAQIRAyExQRIEUWETIjKBBRRxobHB/9oADAMBAAIRAxEAPwDRdl/6nhf7C1/oWisUL7L/ANSwv9ha/wBtaK0CoaaHp/WH8Ldv7y/5UQah9j+nc/uWx8M9JcjfBfFOiuLXZqxIVKuilSYHIoe+rf3/AMaIgUPI5h9o/M0IGWxT1pop4pgjldpUqQxUjUOLxSWkLuwRBuT8gNyfAamsbxHt6AStm1Pc7kifEINY8zTQjbCumvNT21xO0ID4Ko/1/hNPt9v7ykB0Rx1BWGj+6Y8dulFAei0o0rI8O/SBZchbiNb/AHwc6DxOgYD3GtZnkAqQVOoIgggiQQe6gCrxQ8jfZPyj8axSYQs2YXWtljIEhvKF8ABv3VtcehZGURLDKJMAFyFBJ7pNYvE8Me3OdkIUa50WNQCCHGp0IMwdK4vUva9jPNKoqPyUMUtyWJfOAdWIClpMdNxJ38NKhTDXGJyI/KAwIDMAmu0eqpLEkxrNS2udVcJktSigoJVyHGZivWBtymfnsuCcXIQgZLyht9VugloB0B1gk7CI3FU5KMVbJuo7Mu/EluBfSWEDrANxAFzKNxlHKG038dqmxmFwRAKm7aYliWYC4oEEogURqdBO2kyZrZdocMj2oIl2e2qqQuc5rihlS7s2kjUt40P4t2ft5HS2jFlCyoJzL522mR+8hiZ6U1qIX9oI4Wq3EImy74hiXIAR7NtSvrIITLohjSJPdIGYjG529MyK3L6CzbGq8iZA3eQCwI7zpVy8kK7s4dny2bbYm2WhW3cXTyoV59dTC9KrYu2gfOiN6G1FtCpDK+ICyOaBmkwxMAkKOtRfktCtlP8AUd76rfE0qu/qbG/vf95P+dKq8ZFbNp2W/qWF/sLX+haKmhXZf+pYX+wtf7a0UrpNjjVQww/a3PJP/Krl+4FWTtt36naqWDINxyP3fl/GkuRvgvrTorkV0CqJFSJpTSpjEtDweceZ/GiFDLbc48zSEy+KfNMFOWmCHRVfHYpbVt7jeqiljG5joKsChnaWyXwt5VEk2zA741I+ANAzyzjvaJsUwZnITXJbXVUManQSSe8+VB72FckAAtO3I6/EHStF2YwAcekbWdF7gBvHvrXWsKvdWM8tOkbwwqStnnFzB38pBmB0HjuKFOjDQk6bCvYcVhVK+qKBX+EoZJUE70llfY5YY9Hn4xcHSR36kH3EdK2H6OOLuMQbLvyMhIDNoHDKFCydJk6DeslxROYsO/4eVLgl5luo6iSrDTvEjQ/z1rdOzmapntXaFiLDxvCxGpnOnSDWbxbPfSM90gJHqBizFcwSVQaTlGpOmw1itDxu2LtgqzsubJDKSCDnUgkjUDST4A1k7NnINcS6MoUqskgDlKGc0jQltB0HfXLmryVsznTe2QXuS2FzsQHVcr22UKEZiTnECc5eRvoNdKsWArJ6iswIAdGViO/SQw28aH3fSCEzwCUc5hpLqWkjvgz76eGdiAWtvr0yT8CBXPmdtbIklrZpuIIFSzbS7cLs9s5LqFQJZTmlkzFQftzr5VaxT3EuLcvACDlmbqZGiZV0flzdxAmPVFZj6Q4uJmeQrJrdXMFWZ9WWBAE8swfvrQWsPi7ipdR7WQmDbtloWNByZoUkLsrAnbWuiNNaKcU0qZWGPdWd5W44LZEIVwzOupa2YIJgcw0EnvNCC4t5FWD6L1NCjtfYyGdGJzZDpqBoKK28HdLMLb2nBnMoz5rTDuQqbiEH6kjWTQzEs6BM6Sis4QHVS7GGOYasZMiT1NROMou0LxfuF/1njP8A5W+A/KlQH6a/c3xFdq/KXua0zedl/wCpYX+wtf6FopQvst/UsL/YWv8AbWilbjKvEPUPWqnCh6xiPV0OpHKNJojdQEQRI/KqfDxq+kc+3dyLpQuSnwXxXGPSnCuPpJqySO5cCim2LxbcR3eVVVDO+oIA11nU1eVIoA6xoVgzJU+B+VE7nqnyNBuGPqo7lpLkGFxTxUYqRaYIQNdyzodQaQFdNAzyqxxBMKz2nBXJcuAaaQHMfdFHbHHLTIXU5gBOm/wqv244cXvEp1QTAnnkCT3jKoEeM0zgPCQqPmUjNAAO4ganTzrmyJWdeJyrfBSxXbQBsiW2bup2F42zmHtlZ6iDHmKhxHZRy7FeYGY1IInrI6irWD7NOsFiVA2GZiT5k9aLVFU7BHaThwBLj1WifBu+hfZ7CTiLafWdffqCfumtpxzCzZZYmAD8CDQDhuBa1cV0ZS6APlOunXTymtITSWzGeJyej0nHoGtuCpZYXNG4WeaNeolZ6ZprJ49izAlV5QWuGMpJLaqDEwHYIB3WttDW2w1k3FMXHtjIGJQISVI1WHRhqG8D49DnMVwgpmVbtwqsuSyWzoucM2YAZsq5vNnXvmss0bdo5JwvsD4TnxKF8xBKs5EM0IhL6DcDK3uHfXbudHYNAZdwyMIJjrqO740OuM1srDr6snKQSoNv1Tl2OWAR4nczRJMRiXth50iCMsMEDZpfLoRmjUk65a58kFKK90RKCaWyCyikqQnrXNBbYeyjGB3dDJotjSl51ykKwUD9p+zcAAGPSKFzGdASDoKB4kuMgZEInSdBoDqTJnrVzD5yAq5R6Q66tcAWQACgDGM0dJ08aUYypJP/ACLx0kGMLeb0Sq5RlLOSb4IOYEepftmVlSNWUSZEmTSdzZhmVxKMyhgjobj6IQRIgpKkgyNO+q+HW7btuqZc+YgC3cJnOOlsrk6eDbeFUZYpIQdWa2jEZRvn9G2qjbUb6V1eTquxpbB/pB/IpVX+lJ9V/wDDSpWzqo9K7Lf1LC/2Fr/bWilCOy9xfoeG5h/QWuo+otFc47x8RXRRmJtjVPADV/t/+C1cY6Hyqngfa+0fkKS5K6LwrtcC0jViGkdfL8qdFcn30iaVhRFiTCN9k/KhGAXn8lopjTyP5Gh+AHM3kKOwfASWpBUYp9NiR0U40xTTs1AzPcUcJdaeoUjygD5g1RvcTtIozOBrv41b7X2n9GLiCWUEfHUT75+NYdcG7gs7AM0aEnT4CuaUfuZ2Y5XFJGuwuPUklDmTTm6Seny+NS4jiII3rH+jvqmRHHn/ADvVjB3nIh/W61DRon7oJ42+WBqTC4XOcwXmMKp8O/7z8KqHUgVqsGEQgKoGkExvVwjZnOfiF+DrBYDbKFkzpsKr8bsBk5JV1hxlz52MzlIQAnNDHfcA6gCFhsWLZzMpKFsrkRCKVklp9nSD3Ak9Kp8RxzIMrgSzFUYs2jDPCnKVEAHKSzAQynoYrLF8o4JGL4pbUMgPNnDsFYuzO7ZQC5ZNc7cxAnlJEg0Y4XiozC/dEMVRl9plgExmOaJQAaQMsSKjwOFF/EpByqEuEAKoLBii8oB+sTBzHoAdqnfCqzm7cUi0iItptYYBjlbSYzg3FSARqPrmsJaS0S1oE8Qw5W8iHQy2YREHIJGvdmq5hsIEXOFBOhXQEHN0ykZToRMFSOlR8RIe7ZGQocjl8xkyWGrdAQCFMdVNEUsDKSdVmBI0YCdImdjPSO+a5pS8JqnqjOX20vggQBnLGWY6llJYz4qSHB6EgmPGKjxJcrmYo4OzaMwIE6N6ymANx1Ampnt8wBChD0OkmZGUncERtB0bepMZhuVyWj9mxmeY/u5lBkMSTzCI69a6FbKjsw2c94/n30ql9F4j4Uq1o6tF7hN1hZtaaZE/0iry4lxuvyoHgLv7K39hf9IqbOe8100ZWGlxrD2J+FOXiJHsAUBN1vrH4mnDEH6x+JooPIOfrsjSB99O/X5/kt+dZx7mtMD06F5M0rdoG7z7mb86b/1A/wBdv8TfnWeLVE92KKH5M0j9orhBHpGg98H5iuYftI6EkMD5r+VZVrtJWmig8jap23I9a2p8mI+YNXcN26w7eujp7gw+6vOnquz0BZ7dgeI27wm24bv7xPhVw15j+jZz9KZZOU2mJGp1DJGnvr0k3wTlBGaYjrqJnu21oZS2cxNsMpUiQRB9+9YPjeESy8Osg6oSNCP4VvMY5RZHMZAjrqdI+6sj2vxjQttkAQEZmIBBJIGUfVMGfdWU0mbYm09AReI2gIVQvlUAvAmRUN3hy+zpXLGFjqawtHTUuwjh7us91G+D8RF5M+Uq4ALrqYzdc0CROlZfE3SIRFLO2iqNSSfCvQOyfAzhsPFzKXuDn00XfKoPUAnfqTNa4zDMkUuP470SIrI7+kfKbaZiHURmBK+1G3mYoTb4taYJhxne0js9ssjlnBAU2woWdgyA95nSBWzxODt3vR5rZAysVZYDLnWJABkGCelA37CKkNav3EKHOhbKxUjXlVQI2G/dtVyTZzMzmE4haTEB2Ysg5COZS1t2yvsJByqJ7zPWiOP7RI8l2V3tH9npkV1D5WJGxZkykEjSWHnbudkXV0xCXLbuIb0VxfRq/MSyZsxgNLaRGpoDicFfsyWtugB9bKWGVPVBYaEawTPsispRrlaEyyuIT6QhF5Ie2Q7ZgFT0hUlJPcNNQDI8KL4bGW3WA9uRyW1DDTUszltNInWCT3Des5hWVb49IAym2VmM2VH1RlHhmHjWhwWDSHGS28JndspzIqPBCyIJMDWCBPSsZwi0l7CnGLoddsIzs4fOqgkgFACWgeoSNdX9UzEUOxdw5rioxdAjFW20QERlOoBLjQzsI2ojiMMl1UAtIALcMVVJ5AWJmPXOsiZAg9RVfjfDUazcuC0qPFxjkQKVWAq8q6KBE6xqwnerilKOtCio2qAv0e99X/K/5Uq13/TeF+uP+ziP+dKtKZto80wH9Gn2F+QqyDQ/AN+zX7K/IVYL1uYWTFqhc01XrjUxWPLVHmqNnqJnoFZcFyoHM1B6Su56B2Pp6VDNdD0DQ689V51rtyoRTHZr/wBHmIRMUWcwPROAfGVPyBr0tLAZWdlEuIXwXoAeleZfo9sB8SVIBBttM90rNel4uwVKJbBOvMpOyR0PQ/xqJGseCK291UbKqhgrRcaHBZQdQJ8h50FFk4vBMl0qL8OrgAKQZJRwD63QyPurTYpnyqqoACyjUjbwjyqviLaZHY5VOVgykievx33pUVZ5tYLryXVyOoAYfiDsR4ipFsu5yojOx2CgsfgK3GO4Ph2RbbGWQyhUgMonWGggAjTY9O4UMv8ACS7rZSUSCXKk5mGo1YnrrWLxbOlZ14/IOw2Ct4QB74Zr7+zbdf2VvT1jMZm10nb3ztcHj7d21KtntkFQ+xkDVHHst/CqPC+zOHtK3ID15iW9+ugqbhPZ+zbVmQMhuTnCnlae9WBEzsQAa1jGjmlLy2wpfGVk01zZfcQZ226U+8pIMkKsHUb/ABO3u+NUmwrelQh2CwxKwDOwmTtr86sYgKCvJnYzvrAXUklthsPfVkjLMW7Wc5EVVLsWB0G5LE67VywHuBXKhBoygzrpuygj79qczi4IcZVBzODsQNVnw0n3Cq9vEEXcqjKhWcp9brqUGqjTYwdfdQHJkO3HCvRul0GEYFMo9ndtO4QWgGYhQNNmWnuFba65boIUiYa4CqsrQekAwd8q9DWo7QZHtOl1iFYQvIZzDVSNtZrFYrgzWSC6TbXI7FHcAoxVCBrykkgnTSR7+fJAiUfc0fBsSfo6wYa36cyAFMBlMFmGW4IYAjQgNvFQYqyi4G44zB3RlUagEZxn20MvJKkT6pHewTg9hHxHoSXyEsVh3EQoc7b6J0EnTrEXL2AKYa463Lwf0oQKHlGi4NI3JGnQ9DRHpDilYY/VTf8A0U//AFXvyrtWsnhjP+9dpVp4D0eO4S5CL9lfkKlNyqOHblX7I+VOL1dmLWy2j103ZqoHpZqdiondqgZqcXqNjSsY0tTg9RNXUNOx0S5q6rVHTgKYEhNcRaWWpEFMDWfo7tt9JbKYIttvseZNDXpSXirOXQ65RK6gco+A1rzn9Hl1VxJkxNth78y16dhnDF4IIzbjwRR+FTLk1jwR3MSjOgDjctvropA099R4zDo3KVVs7ASRPLudfca6mFR7jsUEgZQeuu/3j7hVe7hn9MgR8qgEsp110gg+40itF9sEndGkaabbVVwmBAd2DOPZAB0AG+nXWrLelEnMrfd+FVOG33yEum7EgqZEHz13mjQKyxjUcIQrmW5RKqdxr3dJqWzbdQAWRoEE5T8YB/GhnFMe4NseifVwNATvpOgq0eIRuj/A/jFGgp0RGy7YhiLhHIABAy6HoPfUuIuZX5jJyanbvnyFR2nZy7rygtlXMNwFWYg7SDr4Gs/2hw9zNJuMZSMgkA5nC9THU0w5NBgry8zs6kO2ZBuQuUDMV7zHuEeNdv4lxdT0dtjmlWZoUQOoUkT7vChnZi26WERBl1bNccyxOYnrJPvir2M4dndM7s5BmAYGkae+ekUug1YRv22dSCEOoI1MSDInQ0E7S4RHw9wZiPRydBJkCcu4kE5f8PhRxcMBtK+RJ+e9Ub2EzqyMyqDnDtsArSVMHxiddKclaJ5MhwjEI90OVAKNhlQeqSmZrbcmoY5XXYxp36U7tBcCfSkYbYi2zPoNGZQAYE9CdNtdJNSYLhKlntuFJSxdW04JHOHDISZgsCXETsBptVftDhma+4nS41ggoDcSM6iWDaMyjef3tADXPvQq2Xv+osN3J8L3/OlTv+jsP/8AL/lf86VaXMVM8fstyjyHypweorXqr5D5U+qJodmroamUhQBMHpTUc1yaAHzSApk05WpgShakRahV6kV6YqJWrq1Hmpy1QjYfo8gYl5AI9E+h+0leh4bBZEGRihMsdyCSZ2PyrzLsSHOJASJKNIOxEgkfd91enYrHAI2YFDlOh2276mXJvHgj4Y91Uk5XzEsehEnb+ZrqYxRdJcFOQGCPEzHwq3hmXIuUg6awe/WmhgbjAgHlXfzM/OlQ7Htilyk5xseq9O7vpcPP7Nff8zVbiOGR0cZYkRpoebQ6iuYbhaqihHZRlGk+FPYtE2Pc6FRmZCDlA+YEmrFy6QCYjQ6mdPHagVvA3fTvFx4Kg+UGO8U7ilh0tv8AtWPKfZ12+1QOkTYjEvmRdMkNmb7IGU5iY1MzpQk3UXEIrv6QklwAdIUEqoPQA6+6ouCcMd7aZ3djB1Jjck9IP31H2lwowoF5BnZddoMBlLDMSfZDUBoO8KF3MdUCSWQAaqCdQe+e/wAKuYtnW4hGRgdIMqdxsZIob2axXprYdZ5lzZoI9phEdI00ojiVaNHBI9Uldj4GkHZc+ksPWRh4jX5VQu38/pGQyVOUr1OkmAd9x50uCcTe4pFxVDKxGZcwBjrlIgaz1qfGPDlp0yL5RmM/hTQnozScRRiVOZCDHOrAHSdDEU57wNY29ij6R2RyoLuQFJAgsSNqsJj7o9s++D+FYv1EfY1+k+jT5x30qzn61u/WH+EUqPrxF9GR59a9VfIfKn0y16q+Q+VSVoYUNpA101yKAo7NKuqtSJbJ9VSfITSspQb0kRV0VbOCufUb4GoHtldCCPMRQmhyxTiraa/Q1KeajqRaozHK1SpUQFPQ00SzSdjsTkxKP0Gh8mIU/OvW+IKptsCAQwjXXfSvHuyQDYgKeq6e5lJ+4GvS7KsxVFeCrcykSCAJAjyP3UNmkFoIJgEygCVIA2Ph3VQs4a8t24yuHAhQG8h18waLteI9dcv7w1X39RVTA30Y3GDAgkdY1Gh0OsUi02UeI464iFmtmAVmIJ0YbAHXeidridqBzRA2O8eNLH281ptPZ8NNf51qNbUgAjWB0EnSgNFB+O2heZc+uXubaR4eNUsbxm0ysMxMgjlBJ+FJ+GAYnN6MEMsTlXT1vxijuGwCj2QPhRsHQJ7NcRZrCn0LjeJDDrI9mq/Gy997aZMolpLaggqQRB7wa0HDyFQgdGK/CqHEE57TT/8A0g7+0rAeG8VQmS27y23ChjAtryKhOUTAE7LOu8bGrr8Rg5IIP75y/OBWbwWMZrd0Iis7XHOYnli2EXM58DCgeVGcLeuNbR7lxUlRoFHybmqR0LAYq7lbMgUyZEM0CZmeu+9Q8X4k4TKbK3Vc5YUkeMkzK7b+FMxwVRnRnR50dLcawfWXMAw33FWEYuiZyrsIOZQEaQeu41G+nU0A12eccX4U2HZBqVdcyk7joVPiNPiKqWzWl/SOHRbVwLmRZWQRIZyNCPJfuoPjuE3bC5nAKzEqZ1gnbQ9O6uPJjabaWjeE1Svkr++u1V9MPH4GlWNGtmWteqvkPlUoUkEwYG57p0E91RWtl8h8qIcLvhH5tUYFXG/KfDwMGvQbOPHFSkk3SfZUiuha0A4OklD7XNbuDWR1U9D3/Gu4Hg2Vi1wiBtrofE1Hmjuh/G5pSS67fSK3CuEZ4d9F6Dqf4Uav4m3ZEEhe5VGvwqC5inuctkQvVzt/dpWsDbtcznO/jqZ8FrNu+T3cGKOGPjhS+ZP/AIQHiV9/6JMo6MdT9+lU8dgMQyl7hBygnVhoOsAUdNx29RMo73/4ihPHbjBVUuSTMjQLA8B404vejD1mBfRc8jbr9KzPxT1pMK4K3Pl2SA12aZNczUJiDPZu/kxCsdgDPlpNek4C2yuL6tnRmg94QDIG8dRPlXlnB2/aDyPzFek9msdkD2nELDNbnYhuYp/mHxou3Rqo1FM11zEQpO4g61FgMKhSco5tSYEk/wAxVC1hALZRyZysVadxqYIOkilguEsttVW6+niRt5ECqF0WuI4IFMqsyyQNDrvm6z41OMM4UAPmgD1hqffQTieBxEpkvbOPWBMj3k1bxL4kaKyE95/9UD6HXFxH0hCMuXIZ331iOWrrG/BgJ8Y/CsZdTEi873cZbtQAFB7o7iw7zU9/9YrbNy1iLV5QDECZjuIaKAbL+AsY0s4ZrYAckQSdyf3fCh3G7Lu6WPShrpYOVT2VU7sRtVLh/EL4UnEozek1JQ5e/SPj1q+mKVGVrNlUYbs3MSO6p8kNRb4Ltrhws23RSEBEek6jMIlREZpO/hRPA8SsWkVFd2gQXIJZj1ZjG/3Vnrru7FnaT9w8h0pRFQ570arFrZo8fiLNwLDAkkxzRqASBvvvpRUW1UAamBGuulYO4isIInzrU8P4kGUE7CAZ3Q+fVT0Px2qoyTM5wcVoDdtLINkJvmu2x5jN/wCqq9qD+yUHrcH3K1Xu1pGews63Llv4IZJ/00N7VMMqD95j8B/Glkf2sUF9yMzFKnRSrzrO2jD2ByjyHyqwoqKx6q+Q+VSTXonnFvD410EKxAmY3EjWRO1HnxCXFR3J9Hsw6K/TPGsVlgalt32WcpjMCpHQg+FRKNnf6b1s8Sae0+v7Go4i93KPQhckbrBPu6UGTG3l5VkHvy8x8yRVXC457fqMQO7cH3GjFjj49tNe9fyP51NNHd/U487TlNx/0EMEjKha4xLHVpOw7qzGOxOd2bp08hVvifFjc5VBVOs7nzoWTTjGtsy/kPWRnFYcb+1d+7EabNImuE1oeO0JjXFpUlqhUGOzKBr4B+q34Vusbg3e0gSP6RYbqGDSD8DqO6axXZJJxIH7jfhXods5QAdQGzd2sRU+SUtnRFXCl7l4cVD2nW+pR0BzxqAY0ZT3HcVe4djQbScwZoE9PLfTaguLxBcqVGUjRjoc6TOU+/WfPvp54i4nIESYByqOkxvPeabmhLGwzxK4sqQy6ODvHjWR7Z8RxD/ssKyhSvPcJ3JPqpvpG5jrHfUzSTJMmmtYDb1Ly+xSwrsz3AcQUuL6S3Mry+kXlJMw8n2J0zeBrQ2MYwvZEAtB55VPLMEgMGETEaiCJjWsb2l4XctP6bOz24CkTqgBkCNigJn3++pMDx8KhFy2LymPVJDdQDM6xLaGa3hNSjRzzi4yNVacNIkEroYM+UeFTKKA8G4ot665CMkW1ADQJCmPmfvo094CuaaqTR2Y3cUyZa471SuY2KqXeI1JT0EHuVC3GGsH0ijNlHOv1k9oeYiR4jxoNd4l41Qx2NbKcqliRoPxJ6CnFO7M5SVGvTGm9dtZ9ALv7NTEqioxIPjLL5THSndqdDb8n+/L+VB+CX3fE288AhGbTaWDA6/z1PWiHal5dB3JPxY/lROV42/kiKqaA+YUqrzSriOuzJ2Dyr5D5VLUdgcq+Q+VSxXoM845TTTjSpFIbTg1KuRQA4mlSFKmIYa5TiK5TEICkBSp4FABzsc0YkH9xvwrdG4TWC7MNlvT+43zFaxuJKPCspvZ04fxLrMaQNcRyRJEedPTX31JocmpLbjrTLqGqeJxARd6XIWO4pdXIQddNjXnIGQsoClRmyyJIzRrPeOlGO0HF2VjbIKvpysCpE6yQR3UHtSrFxldemYrt3kSIPSPOuv08Kdvg5PUTTVIJ8AYhyR0BGwBMxud9I28aMXL7HrVbhXB8VcjJaCz15VXXqY1+6jL9kMQo57lsaTCBm+E5anKnKTY8UvGKQGuXu81yxhnuyVHLMFjtPd41e4OMOlxvTLnAJUZ53B3yRHxmtBxe/byo9oruqlRAkdPeOnnSUV2VKb6PKcdiWzss6BiNNJgxrTMNeYaBjHdOnwqC6DmbNocxkdxkz99Pw29TLglPZt+zVycQv8AZmfj/GiPaBufyUfNj+NBuy7RdZu62B8SPyq9xa5LnyA+6s5KsX7NIu8n6B+au1z3V2uc6DM2V5V+yPlTq5hzyr9kfKnkV2s4qGmlSNKkBykK7SoAQFKK6KVMDhpsU6uRQIVOWuV0CgCazimtkukTEa+Yo52btvfY3bkwvqk7E+A8KCYfCtcYINyfgOp9wmt3g0RECKICiAKibRriTb+C014IvMdKdgccmUsxjurFdouMsbmRIIX1j3nu91C7nHLpXKoC+O5906CkoNlSyxTo3mP4wPZq7wTMjZ2RXf2ZZeTyE6MfurzjBBoLuxJOiydp3I7u6p0xToQUd1I2ysw+RrWOOtmMs96PTbeKe7edbmGtuuQ+uEaRCSNSe81KeE4QqR9FtWyfaRUDjyOWvMv17iVOZbpJHQhWB6wyka16N2eGHx9lbwDo6nK6I7IFca+wRKkEET3+FabJUkyzwzFICbaXCGTQ5yozQBrIPiN6scXvXUQMFJykEEEEbx796V3hqWznVdPaILFo79SZ2FSvYOTkZTI2YAqQfLX50cDYvpKOiu6LzAHmAnUdJ1rO8V4fh2dHUSxJGs6aEggHuiPfVjB3GtFxdsjKCSMnMAJJMCJiI6VPZx2GxCEWXQuvMFEKwI/dMEdR76T2B5T2qw6piXC6AhWgdCVE/eCffQ/DDWj/AGw4PeS4bzc9t4yOOmk5WHsmZ8KC4ZdaynpFR5NJwR8guN9gD/N/CnvdLGTXOE25R/E/h/GuZayyOoI0x7mx0+NdqKlXPZ0meseqv2R8qkzAbn/1TMOOVfsj5Vq+ymOCLla8ltRdV2/aPZdRlAzowDJdAGb9mytsNCGNdxxGXI7qbW1fE4O4crm2clnDLadhcTO4wzLluhToiutrMFAyidd6pcWvWRhXt2/Q5y9h3yZiM+S6r+hJMFRNsEDQF3jSIKAy9Jm761b/AENQWAssoVjZXNcLsfol0sMSM0A+n9CFiNfV5arYTFWlv3Gtslk3MMi23GYJZxFy3ZNyG1ZBPp0zCcufoBIdCszoP5Uie+tj9Mw3o7a32tYm+jWke4zXHU23u3CyhwQXyIy82oGYAE5dLGCu4C09p0ZAUdYfOwcEFw5YQTlgaEwNUKycwooDCBgdiD5H+e8fGnCtYvGUxNk2bkJBQI1661x2PocaVZ7xUcqXLlqNIXN4mor1rCizeUNZzqlrK6sWLOuHsZlVeUw10XRnUkSWzKFAooRmRTlptOFIA/2RRTiObbI/xlas9o+JC2WRDznf9wEfOg3CrqpcV2BIE6DviBvuPCmFAGL+zJMR3mQIpuKdWP6jiqQObDkDXc667xVjDYIHfbr5VIoLNmbc/wAirlwhUI66EefSf57qqjKwfibnNA0UAQPcB+FVmc1ITPnUbJTJOemo92N44MLiAzE+juDI410Myjx1g6eTGs8VrjpIiixrR7le4shGknwiPuND8FjLi3GQWiEOqTm36gaedYHCdr8SltUXJKiM5SXIG2pMaCBt0obiMfeuMGe67MNiWOnkBoPdQi3NI9gxN9yhPojnUSvrSD09mqDYjDFRiHKWLixmLwhbUyDIBbr00mvO8HxnE20yJfdE1MA7Zt4J1GuunfQy9bLMWcl2O7MSSfMnWqoTkj2R8PYx2GdEdWRwRmSDlYGQQDsZE15VxThRw957RYOUIGYaTIB26HWKrcPxdzDtmtOyagkA6H3HrV3HEM7MDOaHnfVwGP3k1hm0jTE02EOGX0gL6vf4mN5qI7nzNU7VXE1Fcc5tqmdcYpbQyKVW/Tn6ifA/nSqbRdMylj1V+yPlUppUq72cQ41w1ylSAZSpUqaJOU5aVKmMVIUqVAhLThSpUAWcPv7qs3/U/vD5GlSpmUuSCxvTsbufP8BSpVSDoH9aRpUqBEL1xdqVKkMkSpRSpVSIZOlOpUqoCM1DY9f3UqVZZfxNMX5IKW6uWqVKvNmenEfSpUqgs//Z",
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Avishkar Jagtap",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
