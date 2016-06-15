X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4474" "Wednesday" "15" "June" "2016" "17:44:51" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160615154451.GK360@suse.de>" "102" "[oss-security] Re: CVE Request: ruby openssl hostname verification issue" nil nil nil "6" "2016061515:44:51" "[oss-security] Re: CVE Request: ruby openssl hostname verification issue" (number mark "U       meissner@sus Jun 15  102/4474  " thread-indent "\"[oss-security] Re: CVE Request: ruby openssl hostname verification issue\"\n") "<20160609175249.85CE16C03BF@smtpvmsrv1.mitre.org>" ("<20160609080613.GA3694@suse.de>" "<20160609175249.85CE16C03BF@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18359 invoked by uid 550); 15 Jun 2016 15:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18336 invoked from network); 15 Jun 2016 15:45:03 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 15 Jun 2016 17:44:51 +0200
From: Marcus Meissner <meissner@suse.de>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20160615154451.GK360@suse.de>
References: <20160609080613.GA3694@suse.de>
 <20160609175249.85CE16C03BF@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160609175249.85CE16C03BF@smtpvmsrv1.mitre.org>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: CVE Request: ruby openssl hostname verification issue

Hi Mitre,

Sorry for answering late.

I agree with your assessments of "underdocumentation, but not
generally buggy".

I also do not see a need for a CVE of this race condition.

I hereby retract the CVE request.

Sorry for the noise.

Ciao, Marcus
On Thu, Jun 09, 2016 at 01:52:49PM -0400, cve-assign@mitre.org wrote:
> > This probably warrants a CVE:
> > 
> > https://github.com/ruby/openssl/issues/8
> 
> We are not sure exactly what issue you believe should have a CVE ID,
> There seem to be three issues that are somewhat related. Our short
> answer is "probably there shouldn't be a CVE ID - the main concern was
> that the documentation needed to be improved, and the vendor instead
> decided to change the API semantics and break one (rare) use case."
> 
> Here's some discussion of the three issues.
> 
> > VERIFY_PEER only checks the cert chain is rooted in the local
> > truststore. It does not check if the subject is valid in and of
> > itself.
> 
> One might argue that this behavior should have a CVE ID because it is
> not properly documented. Some users might have guessed that
> VERIFY_PEER did validate the subject, because it is very rare for
> anyone to want to establish only that a certificate is rooted in the
> local truststore, with any arbitrary subject.
> 
> Other products, such as libcurl, have a similarly named option with
> the same behavior, but with explicit documentation, e.g.,
> 
>   https://curl.haxx.se/libcurl/c/CURLOPT_SSL_VERIFYPEER.html
>   "Authenticating the certificate is not enough to be sure about the
>   server. You typically also want to ensure that the server is the
>   server you mean to be talking to. Use CURLOPT_SSL_VERIFYHOST for
>   that."
> 
> However, there apparently isn't an analogous OpenSSL::SSL::VERIFY_HOST
> for Ruby.
> 
> Still, our initial thought is that underdocumenting
> OpenSSL::SSL::VERIFY_PEER, by itself, should not have a CVE ID. Users
> may be able to realize, possibly from their knowledge of libcurl, that
> an option called VERIFY_PEER or VERIFYPEER is typically insufficient.
> 
> 
> > My understanding is the ssl_socket.post_connection_check(hostname) method
> > must be called to ensure the subject is correctly verified. However,
> > communication is allowed to remote services without verifying the subject.
> 
> Here, maybe the problem is a race condition. In other words, there is
> inherently a time window in which communication can occur with an
> unexpected host. Possibly, in most common scenarios in which the
> application author did understand the post_connection_check
> documentation, nothing security-relevant happens in this time window,
> e.g., a client would not be sending requests to a server before the
> post_connection_check step. However, there may be uncommon scenarios
> where something security-relevant can happen in this time window.
> 
> Do you believe that these uncommon scenarios actually occur, and
> therefore this race condition should have a CVE ID?
> 
> 
> > I would suggest throwing an exception if VERIFY_PEER is configured and
> > I/O is attempted without first calling post_connection_check
> 
> Here, you seem to be suggesting that VERIFY_PEER is never sufficient
> in any scenario. This seems to be equivalent to suggesting that the
> libcurl choice of using CURLOPT_SSL_VERIFYPEER without
> CURLOPT_SSL_VERIFYHOST is always wrong, and should not even be
> possible in the libcurl API.
> 
> Do you believe that there should be a CVE ID, in general, for "the
> product needlessly offers a way to skip subject validation"?
> 
> (We don't know all of the use cases for skipping subject validation.
> We think that it is typically useful only within isolated networks.
> For example, consider a scenario where the local truststore recognizes
> exactly one CA, this CA has only ever issued one certificate, and the
> certificate happens to have an arbitrary subject, but is intentionally
> used on multiple intranet HTTPS servers that are trusted by the same
> intranet clients. Here, subject validation doesn't really help anyone,
> and mandating subject validation would break this use case.)
> 
> -- 
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
