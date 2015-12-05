X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1936" "Friday" "4" "December" "2015" "23:42:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151205044256.0BFDB6FC003@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: Magento SWF XSS" nil nil nil "12" "2015120504:42:56" "[oss-security] Re: CVE Request: Magento SWF XSS" (number mark "U       cve-assign@m Dec  4   44/1936  " thread-indent "\"[oss-security] Re: CVE Request: Magento SWF XSS\"\n") "<CAHw3cgRASepeWewzjpN2fWLFiAhWdiwBeSBsaYp5oUJBCgAuCA@mail.gmail.com>" ("<CAHw3cgRASepeWewzjpN2fWLFiAhWdiwBeSBsaYp5oUJBCgAuCA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15882 invoked by uid 550); 5 Dec 2015 04:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15858 invoked from network); 5 Dec 2015 04:43:07 -0000
From: cve-assign@mitre.org
To: ryandewhurst@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAHw3cgRASepeWewzjpN2fWLFiAhWdiwBeSBsaYp5oUJBCgAuCA@mail.gmail.com>
Message-Id: <20151205044256.0BFDB6FC003@smtpvmsrv1.mitre.org>
Date: Fri,  4 Dec 2015 23:42:56 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Magento SWF XSS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://appcheck-ng.com/unpatched-vulnerabilites-in-magento-e-commerce-platform/
> 
> DOM based Cross Site Scripting (XSS)
>
> http://[magento_url]/skin/adminhtml/default/default/media/editor.swf
> http://[magento_url]/skin/adminhtml/default/default/media/uploader.swf
> http://[magento_url]/skin/adminhtml/default/default/media/uploaderSingle.swf
> 
> editor.swf?bridgeName=[XSS]

Use CVE-2014-9758. Often "uploader.swf" XSS reports for various
products are a consequence of uploader.swf in old versions of YUI,
e.g., CVE-2013-4941. As far as we know, YUI did not ever include
editor.swf or uploaderSingle.swf files. We don't know of any
relationship between any Magento .swf file and any YUI .swf file, and
therefore there is a new CVE. For reference, other .swf filenames
associated with YUI 2.x are YUIBridgeProject.swf, charts.swf,
connection.swf, datastore.swf, and swfstore.swf.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWYmrxAAoJEL54rhJi8gl5khoP/3JWFnvm1rmKbwimcvJASXgh
42zAhM51FkONJ9B3IXYAUyzwajJ1UAFN80TOImXVIoEF4UNaDqkVm6iEELTQ7wrW
+AySRhSinOYP6mfRSGoOpCA8RkNqTagDpjRBqYvMdQTFYBj+B5bxNljogpRZkR4P
0vWS7o29oHa5KtSuqU3+KFbs8s8tdMdciPnJvF77U7JfUTCh5lqNtZSUlas5+VyN
ZMCneNLE+mI9Em2+t1hPs/yPeNd/d3fIgQyQStSdBsG6cLE9SnxobaPiKMdrZGGv
DAw0/awA1Vr5BuSErpiQHevWIuwjo0M6uhI0T9XFFtwgO0BEg8uyqZPlr5zx9rUd
w6ZS7EVy7lIlfxAtJYtOEMXVLa0ix0rSerBgZcK/62lD7D/AqOFq8WhSstLkwI16
vs1yM40zdshJGk17VVrPHzaYBDApVkXGZ2bReOB5FyJhDLNNXrK+KTQmF8StqP7e
0/3Le12IWGLlhuhYjq3TWmxjZDgxaABh/z8Ee981BHDpsqJKAKaTC2SjWNLCETa8
kIRlvt+SxXzJckGuhq+oxAaYxcJvhFCMsZx1IFK/+uq1SPn/kMIqKmdRN6xK5qZX
LqZ0jXoI4RKQ6SECtzAKCt3KjiXYB6wXsKtFrca5UDY7AjZIjMSzYD/LTgguOvxK
Df382qD22Kat+PdjT8/c
=Eg7t
-----END PGP SIGNATURE-----
