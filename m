X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/18/2
Message-ID: <20110718084750.GA18157@flens.dfn-cert.de>
Date: Mon, 18 Jul 2011 10:47:50 +0200
From: dfncert@...-cert.de
To: Vincent Danen <vdanen@...hat.com>
Cc: oss-security@...ts.openwall.com, dfncert@...-cert.de
Subject: Re: CVE request: vulnerability in FreeRADIUS (OCSP)
Content-Type: text/plain; charset=utf-8

On Fri, Jul 15, 2011 at 11:18:49AM -0600, Vincent Danen wrote:

> >A patch was proposed to the packet maintainer.
> 
> This is pretty light on the details.  Any references to supply or an
> actual description of the problem?
 
The implemented procedure does not verify the status of
the certificate. For instance, if the certificate has been revoked.


> Link to upstream fixes, emails, bugs, whatever?

We are not aware of any upstream fix.


-- 
DFN-CERT Services GmbH, https://www.dfn-cert.de/, Phone +49 40 808077-555
Sitz/Register: Hamburg,  AG Hamburg,  HRB 88805,  Ust-IdNr.: DE 232129737
Sachsenstraße 5, 20097 Hamburg/Germany,  CEO: Dr. Klaus-Peter Kossakowski

Content of type "application/pgp-signature" skipped
