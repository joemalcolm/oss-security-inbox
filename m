X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1546" "Sunday" "18" "October" "2015" "22:06:13" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "41" "[oss-security] Prime example of a can of worms" nil nil nil "10" "2015101904:06:13" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 18   41/1546  " thread-indent "\"[oss-security] Prime example of a can of worms\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5333 invoked by uid 550); 19 Oct 2015 04:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5302 invoked from network); 19 Oct 2015 04:06:25 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=Gcu9TMjmkjekn7ICs1TiSUioR4ZE16asGuCOXtuEwgM=;
        b=ZlH1+TrI6h7Z4z+6KWq6SH6T8JUnSXcOYCk+9ZNzXBkcZP8ijKgr6tE32jOU9z/C5R
         teW2KGYyZeySjIJPXhC1wfCI8M1VTTwdrxKtOPyXPs0GBYcPi1kEyJWIfqd71OtoN/pd
         DJQ6vPI9YePNb3ATYPlU+FYZokfhDTtbEtJpP2H1k/Yo179SZKb49HcRmTfoXsyUuTn6
         PeqSF1dcM8o7fVZECUmV4dL73RUvZa5G+QuKyFytwGTWBojsj2b8OKIt7tE3QEHUuvhY
         k98twAOJJ7uw4rFLcVSPb7V8eQYnVprZtrTs3pLkoAjjMvZqy03DdMeEDHeoqgzzpjHA
         AQTQ==
X-Gm-Message-State: ALoCoQmgcsTfxnW7DcsPKFWo4H7Q+UzAqUTDGKY2SBcSgS8AAAIIO2qqxx5LWWvEprDH680NqQzV
MIME-Version: 1.0
X-Received: by 10.13.212.141 with SMTP id w135mr20554128ywd.76.1445227573531;
 Sun, 18 Oct 2015 21:06:13 -0700 (PDT)
Message-ID: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114fd41223e62205226d44e0
Date: Sun, 18 Oct 2015 22:06:13 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Prime example of a can of worms
To: CVE ID Requests <cve-assign@mitre.org>, oss-security <oss-security@lists.openwall.com>

--001a114fd41223e62205226d44e0
Content-Type: text/plain; charset=UTF-8

So in light of:

https://weakdh.org/imperfect-forward-secrecy-ccs15.pdf

and

https://www.eff.org/deeplinks/2015/10/how-to-protect-yourself-from-nsa-attacks-1024-bit-DH

I would suggest we minimally have a conversation about DH prime security
(e.g. using larger 2048 primes, and/or a better mix of primes to make
pre-computation attacks harder). Generating good primes is not easy from
what I've seen of several discussions, my fear would be that people try to
fix this by finding new primes that turn out to be problematic.

Secondly I would also suggest we seriously look at assigning a CVE to the
use of suspected compromised DH primes. Despite the fact we don't have
conclusive direct evidence (that I'm aware of, correct me if there is any
conclusive evidence) I think in this case:

1) the attack is computationally feasible for an organization with
sufficient funding
2) the benefit of such an attack far, far, FAR outweighs the cost for
certain orgs, from the paper:

A small
number of fixed or standardized groups are used by millions
of servers; performing precomputation for a single 1024-bit
group would allow passive eavesdropping on 18% of popular
HTTPS sites, and a second group would allow decryption
of traffic to 66% of IPsec VPNs and 26% of SSH servers.


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114fd41223e62205226d44e0--
