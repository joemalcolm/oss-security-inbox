X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1399" "Thursday" "2" "April" "2015" "16:23:38" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<1DDFAA0C-B30B-4468-B520-C073890ED6A2@me.com>" "35" "[oss-security] Re: Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8" nil nil nil "4" "2015040220:23:38" "[oss-security] Re: Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8" (number mark "        larry0@me.co Apr  2   35/1399  " thread-indent "\"[oss-security] Re: Remote file upload vulnerability in videowhisper-video-conference-integration wordpress plugin v4.91.8\"\n") "<97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>" ("<97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20405 invoked by uid 550); 2 Apr 2015 20:24:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20361 invoked from network); 2 Apr 2015 20:24:01 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.13.68,1.0.33,0.0.0000
 definitions=2015-04-02_06:2015-04-02,2015-04-02,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1504020187
Content-type: text/plain; charset=utf-8
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
In-reply-to: <97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>
Content-transfer-encoding: quoted-printable
Message-id: <1DDFAA0C-B30B-4468-B520-C073890ED6A2@me.com>
References: <97A81225-70EB-4630-BA8D-8BC3F252CD35@me.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: fulldisclosure@seclists.org
Date: Thu, 02 Apr 2015 16:23:38 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remote file upload vulnerability in
 videowhisper-video-conference-integration wordpress plugin v4.91.8
To: Open Source Security <oss-security@lists.openwall.com>

Hello Folks,

You can get php execution by using the file extension .phtml for both of th=
ese advisories. I'm currently updating the advisories and the vendor.

Try using an uncommon extension not defined in /etc/mime.types.

$ grep "#app" /etc/mime.types=20
#application/vnd.ms-pki.stl							stl
#application/x-httpd-eruby			rhtml
#application/x-httpd-php			phtml pht php
#application/x-httpd-php-source			phps
#application/x-httpd-php3			php3
#application/x-httpd-php3-preprocessed		php3p
#application/x-httpd-php4			php4
#application/x-httpd-php5			php5


> On Mar 31, 2015, at 9:54 PM, Larry W. Cashdollar <larry0@me.com> wrote:
>=20
> Title: Remote file upload vulnerability in videowhisper-video-conference-=
integration wordpress plugin v4.91.8
> Author: Larry W. Cashdollar, @_larry0
> Date: 2015-03-29
> Download Site: https://wordpress.org/support/plugin/videowhisper-video-co=
nference-integration
> Vendor: http://www.videowhisper.com/
> Vendor Notified: 2015-03-31, won=E2=80=99t fix. http://www.videowhisper.c=
om/tickets_view.php?t=3D10019545-1427810822
> Vendor Contact: http://www.videowhisper.com/tickets_submit.php
> Advisory: http://www.vapid.dhs.org/advisory.php?v=3D116
> Description: From their site "VideoWhisper Video Conference is a modern w=
eb based multiple way video chat and real time file sharing tool.  Read mor=
e on WordPress Video Conference plugin home page."

