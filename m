X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1607" "Wednesday" "1" "March" "2017" "04:39:21" "-0500" "Larry W. Cashdollar" "larry0@me.com" "<2DC459E9-2A8F-45E1-8D1C-7AC78F3BCADB@me.com>" "34" "[oss-security] Persistent XSS Vulnerability in Wordpress plugin AnyVar v0.1.1" nil nil nil "3" "2017030109:39:21" "[oss-security] Persistent XSS Vulnerability in Wordpress plugin AnyVar v0.1.1" (number mark "U       larry0@me.co Mar  1   34/1607  " thread-indent "\"[oss-security] Persistent XSS Vulnerability in Wordpress plugin AnyVar v0.1.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17460 invoked by uid 550); 1 Mar 2017 09:39:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17418 invoked from network); 1 Mar 2017 09:39:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1488361162; bh=pENwf1Dr9XXBDnPp7TWawUPwFoTYzAqgEg9w0uPZg6w=;
	h=From:Content-type:Subject:Message-id:Date:To:MIME-version;
	b=OklaBzlNUuy1xrtQfSKTKXgVpzVSFA2CDopgBPXCnd8cHiSuyEfWtS+pI7f33V1xd
 pBMyb1Zw0jaiBgvTQQWtTw/vwsciSL5TVDeic1k+4OXMqkvkbCteMryYvhkzYoHPDM
 NTEgWDdIPaIIDiMO+YCeDFAdkN5h8kfXJjXo7ijexYe1pILJBz/A+qJG8cKevo35i6
 u6IFmwW9lDZ2ke7HcLvSbRXxqSZxAa9si3ndiHz0nJdK0poezE2JDGM68PGikQM73N
 1/yvfdH8FX9Zv5bdgwYDj8P6n6D3q2ZIS1Sqzn+0xYTvFHHvv825hod33p64UlxGCd
 T6lzEPMguog2A==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-03-01_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1034 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1701120000 definitions=main-1703010093
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <2DC459E9-2A8F-45E1-8D1C-7AC78F3BCADB@me.com>
Date: Wed, 01 Mar 2017 04:39:21 -0500
To: Open Source Security <oss-security@lists.openwall.com>
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Persistent XSS Vulnerability in Wordpress plugin AnyVar v0.1.1

Title: Persistent XSS Vulnerability in Wordpress plugin AnyVar v0.1.1
Author: Larry W. Cashdollar, @_larry0
Date: 2017-02-21
Download Site: https://wordpress.org/plugins/anyvar
Vendor: https://profiles.wordpress.org/matt_dev/
Vendor Notified: 2017-02-28
Vendor Contact: plugins@wordpress.org
Description: AnyVar is a simple search and replace plugin. It lets you add =
changeable variables (text snippets) to posts, sidebars, widgets, links & t=
hemes.
Vulnerability:
$var_name and $var_text aren't sanitized before being sent to the webpage. =
 $var_name only can contain text so only $var_text is exploitable
In file ./anyvar/anyvar.php:

202                         echo "<tr id=3D'anyvar-$var_name' $class>
203                                 <th scope=3D'row' class=3D'check-column=
'><input     type=3D'checkbox' name=3D'delete[]' value=3D'$var_name' /></th>
204                                 <td><a class=3D'row-title' href=3D'?pag=
e=3D".$_GET    ['page']."&action=3Dedit&amp;var=3D$var_name' title=3D'Edit =
&quot;$var_name&quot;'    > $var_name</a></td>
205                                 <td>[$var_name]</td>
206                                 <td><textarea name=3D'anyvar_text_$var_=
name' i    d=3D'anyvar_text_$var_name' cols=3D'60' rows=3D'3' readonly>$var=
_text</textarea></    td>

CVE-ID: CVE-2017-6103
Exploit Code:
	=E2=80=A2 In the text field box the following will trigger a JS alert popu=
p:
	=E2=80=A2=20=20
	=E2=80=A2 </textarea><script>alert(1);</script><textarea>
Screen Shots: [http://www.vapidlabs.com/m/xssvar.png]
Advisory: http://www.vapidlabs.com/advisory.php?v=3D177=
