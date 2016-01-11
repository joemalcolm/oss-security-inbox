X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1301" "Monday" "11" "January" "2016" "14:03:35" "+0100" "Stefan Cornelius" "scorneli@redhat.com" "<20160111140335.01d4a4f6@redhat.com>" "42" "Re: [oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function" nil nil nil "1" "2016011113:03:35" "[oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function" (number mark "U       scorneli@red Jan 11   42/1301  " thread-indent "\"Re: [oss-security] Re: Integer overflow in the JasPer's jas_matrix_create() function\"\n") "<20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>" ("<20160107234606.GB18482@openwall.com>" "<20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17862 invoked by uid 550); 11 Jan 2016 13:03:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17841 invoked from network); 11 Jan 2016 13:03:51 -0000
Date: Mon, 11 Jan 2016 14:03:35 +0100
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20160111140335.01d4a4f6@redhat.com>
In-Reply-To: <20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>
References: <20160107234606.GB18482@openwall.com>
	<20160108024157.4D16F6C0316@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: Re: [oss-security] Re: Integer overflow in the JasPer's
 jas_matrix_create() function

On Thu,  7 Jan 2016 21:41:57 -0500 (EST)
cve-assign@mitre.org wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> >> https://bugzilla.redhat.com/show_bug.cgi?id=1294039  
> 
> > We find a vulnerability in the way JasPer's jas_matrix_create()
> > function parsed certain JPEG 2000 image files.
> > 
> > jas_matrix_t *jas_matrix_create(int numrows, int numcols)
> > {
> >         .......
> > 
> >         if (matrix->maxrows_ > 0) {
> >                 if (!(matrix->rows_ = jas_malloc(matrix->maxrows_ *
> >                   sizeof(jas_seqent_t *)))) {
> >   
> 
> > matrix->maxrows_ > 0 ,but matrix->maxrows_ *sizeof(jas_seqent_t *)
> > can cause Integer overflow.
> > 
> > Despite this library is used by many programs
> > (http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> > providing support.  
> 
> Use CVE-2015-8751.
> 

Hi,

Just a quick heads-up: We at Red Hat originally fixed this as part of
the patch for CVE-2008-3520. This was a rather big patch and
closed a lot of potential integer overflows (originally from
OpenBSD?). I imagine a lot of distros used the same patch.

The original description for CVE-2008-3520 is quite general, so I'm
not sure if that's enough to say that CVE-2015-8751 is a dupe or not.

-- 
Stefan Cornelius / Red Hat Product Security
