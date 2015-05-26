X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1209" "Tuesday" "26" "May" "2015" "15:03:39" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55646F2B.8040409@redhat.com>" "29" "Re: [oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice" nil nil nil "5" "2015052613:03:39" "[oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice" (number mark "        fweimer@redh May 26   29/1209  " thread-indent "\"Re: [oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice\"\n") "<20150520182939.388A76C0029@smtpvmsrv1.mitre.org>" ("<20150520182939.388A76C0029@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15734 invoked by uid 550); 26 May 2015 13:03:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15710 invoked from network); 26 May 2015 13:03:54 -0000
Message-ID: <55646F2B.8040409@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <20150520182939.388A76C0029@smtpvmsrv1.mitre.org>
In-Reply-To: <20150520182939.388A76C0029@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
CC: cve-assign@mitre.org
Date: Tue, 26 May 2015 15:03:39 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-4000 - TLS does not properly convey server's
 ciphersuite choice
To: oss-security@lists.openwall.com

On 05/20/2015 08:29 PM, cve-assign@mitre.org wrote:
> CVE-2015-4000 has been assigned to this vulnerability in the TLS
> protocol that was disclosed in section 3.2 of the
> https://weakdh.org/imperfect-forward-secrecy.pdf paper:
> 
>    "a flaw in the way TLS composes DHE and DHE_EXPORT. When a
>    server selects DHE_EXPORT for a handshake, it proceeds by
>    issuing a signed ServerKeyExchange message containing a
>    512-bit p512, but the structure of this message is identical
>    to the message sent during standard DHE ciphersuites.
>    Critically, the signed portion of the server's message fails
>    to include any indication of the specific ciphersuite that
>    the server has chosen."
> 
> (This is the TLS protocol problem associated with the Logjam attack.)

Would you please clarify if the CVE assignment also covers the
vulnerability (and attack scenario) discussed in this earlier paper?
A Cross-Protocol Attack on the TLS Protocol

Nikos Mavrogiannopoulos, Frederik Vercauteren, Vesselin Velichkov, Bart
Preneel, “A Cross-Protocol Attack on the TLS Protocol” (2012)

<http://homes.esat.kuleuven.be/~fvercaut/papers/ACM2012.pdf>

Thanks.

-- 
Florian Weimer / Red Hat Product Security
