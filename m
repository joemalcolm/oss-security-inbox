X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1727" "Thursday" "7" "January" "2016" "21:41:57" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function" "^Cc:" nil nil "1" "2016010802:41:57" "[oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function" (number mark "        cve-assign@m Jan  7   48/1727  " thread-indent "\"[oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function\"\n") "<20160107234606.GB18482@openwall.com>" ("<20160107234606.GB18482@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5710 invoked by uid 550); 8 Jan 2016 02:42:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5686 invoked from network); 8 Jan 2016 02:42:08 -0000
In-Reply-To: <20160107234606.GB18482@openwall.com>
Message-Id: <20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  7 Jan 2016 21:41:57 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function
To: limingxing@360.cn

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> https://bugzilla.redhat.com/show_bug.cgi?id=1294039

> We find a vulnerability in the way JasPer's jas_matrix_create()
> function parsed certain JPEG 2000 image files.
> 
> jas_matrix_t *jas_matrix_create(int numrows, int numcols)
> {
>         .......
> 
>         if (matrix->maxrows_ > 0) {
>                 if (!(matrix->rows_ = jas_malloc(matrix->maxrows_ *
>                   sizeof(jas_seqent_t *)))) {
> 

> matrix->maxrows_ > 0 ,but matrix->maxrows_ *sizeof(jas_seqent_t *)
> can cause Integer overflow.
> 
> Despite this library is used by many programs
> (http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> providing support.

Use CVE-2015-8751.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjyCOAAoJEL54rhJi8gl5RR4P/3pDkCnol/Y59Nv9pK1kgVr0
Mas2O+hkbbbQRKBtgPs01mACYZDjEontPtUib+oA2F0hFcb/TisQHf611b3SoDI+
vxoSMA/qCXO66l7wpE7FmTOPYDCErpLtWEuYGC152BtEsaENE1vIwRYWx4Jshlem
5XT8LATuUxAC82TObRMr1A5gvDcdgNV9vqmyoDtyAGU725wA9VXWgFAG/CYBbLUC
wzdqAQ3v1p0cDL63MWfg1vGIxkpY6P7dU8yfQUbBflstfKg5m+z6WmFZdmalJbeO
uo3bknyP651xKge8PDN6ftfJbsW15fOFM4M1a3Ei+hqylgbqDF0GbfHn7XP3cMZy
KN2a18Xpj09EWcmZAccaYR26Bc6KY5/9ss8akviQ/BkW2dhoDBdk5Rtt4Fj/w34e
o//6kv40U8BXa5HAwizagP3Ifzgc8SDXi1RRJgx42bKECrs2YWDNIG5h/+6rNVaV
+NV3wRvVc98akqsAz85h4M/OEYHEuhOTnN1TNolD6HqsLU3cQV/r36zXF9xzYOcw
m8Oc+Yyb6sWaMSmNQhwvVuyhtc7qtIA8yKEpeRfzIjJf861nYp+N9cTUbjW3+elx
zSOuxO6sWcJwQ91igQCILNe3CGPmUtQ1DIpdLPFNTUZ4EJyAuHQ6efqB3+U16kjb
6Suu6bvueINOqi+9q0Ff
=1CNW
-----END PGP SIGNATURE-----
