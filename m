Received: (qmail 2036 invoked by uid 550); 11 Dec 2024 18:31:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2012 invoked from network); 11 Dec 2024 18:31:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2024; t=1733941879;
	bh=duh7Ziz71GznQ/u6uDCuTppMS6zry2Bie9+YrVg4Q88=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=rbWqf65Sb5sQSnFF8+Dt5rIVG9wedrqBiIfP8LcCAHuqccBR1ZIoLSeRCIieNcUhb
	 P38ZSYGoOI2cp+LoxboQhhmIj2IsYUNDmtJOW0fd/7sVw59dgrqVXMwLaJZxUWYUQY
	 ma77r62kptu0UNQR9t9w8LWfznuE/T9KBK4rxDxc=
Date: Wed, 11 Dec 2024 13:31:19 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <Z1nadxEHn2E_ufKi@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Vulnerability in golang.org/x/crypto [CVE-2024-45337: misuse of
 ServerConfig.PublicKeyCallback may cause authorization bypass]

Forwarding here from golang-announce@googlegroups.com /
https://groups.google.com/d/msgid/golang-announce/5mK6WBRsRxukMSqsImZ6mw%40geopod-ismtpd-0

(I'm not affiliated with the Golang project.)

----- Forwarded message from announce@golang.org -----

> Date: Wed, 11 Dec 2024 17:53:06 +0000 (UTC)
> From: announce@golang.org
> To: golang-nuts@googlegroups.com
> Subject: [security] Vulnerability in golang.org/x/crypto
> 
> Hello gophers,
> 
> We have tagged version v0.31.0 of golang.org/x/crypto in order to address a security issue.
> 
> x/crypto/ssh: misuse of ServerConfig.PublicKeyCallback may cause authorization bypass
> 
> Applications and libraries which misuse the ServerConfig.PublicKeyCallback callback may be susceptible to an authorization bypass.
> 
> The documentation for ServerConfig.PublicKeyCallback says that "A call to this function does not guarantee that the key offered is in fact used to authenticate." Specifically, the SSH protocol allows clients to inquire about whether a public key is acceptable before proving control of the corresponding private key. PublicKeyCallback may be called with multiple keys, and the order in which the keys were provided cannot be used to infer which key the client successfully authenticated with, if any. Some applications, which store the key(s) passed to PublicKeyCallback (or derived information) and make security relevant determinations based on it once the connection is established, may make incorrect assumptions.
> 
> For example, an attacker may send public keys A and B, and then authenticate with A. PublicKeyCallback would be called only twice, first with A and then with B. A vulnerable application may then make authorization decisions based on key B for which the attacker does not actually control the private key.
> 
> Since this API is widely misused, as a partial mitigation golang.org/x/crypto@v0.31.0 enforces the property that, when successfully authenticating via public key, the last key passed to ServerConfig.PublicKeyCallback will be the key used to authenticate the connection. PublicKeyCallback will now be called multiple times with the same key, if necessary. Note that the client may still not control the last key passed to PublicKeyCallback if the connection is then authenticated with a different method, such as PasswordCallback, KeyboardInteractiveCallback, or NoClientAuth.
> 
> Users should be using the Extensions field of the Permissions return value from the various authentication callbacks to record data associated with the authentication attempt instead of referencing external state. Once the connection is established the state corresponding to the successful authentication attempt can be retrieved via the ServerConn.Permissions field. Note that some third-party libraries misuse the Permissions type by sharing it across authentication attempts; users of third-party libraries should refer to the relevant projects for guidance.
> 
> Thanks to Damien Tournoud, Patrick Dawkins, Vince Parker, and Jules Duvivier from the Platform.sh / Upsun engineering team for reporting this issue.
> 
> This is CVE-2024-45337 and Go issue https://go.dev/issue/70779.
> 
> Cheers,
> Go Security team
> 
> -- 
> You received this message because you are subscribed to the Google Groups "golang-announce" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to golang-announce+unsubscribe@googlegroups.com.
> To view this discussion visit https://groups.google.com/d/msgid/golang-announce/5mK6WBRsRxukMSqsImZ6mw%40geopod-ismtpd-0.

----- End forwarded message -----
