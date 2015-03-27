X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1456" "Friday" "27" "March" "2015" "09:55:25" "+0100" "Pierre Schweitzer" "pierre@reactos.org" "<55151AFD.90203@reactos.org>" "41" "Re: [oss-security] CVE request: denial of service in Quassel" nil nil nil "3" "2015032708:55:25" "[oss-security] CVE request: denial of service in Quassel" (number mark "        pierre@react Mar 27   41/1456  " thread-indent "\"Re: [oss-security] CVE request: denial of service in Quassel\"\n") "<550C495D.9030204@reactos.org>" ("<550C495D.9030204@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30241 invoked by uid 550); 27 Mar 2015 08:55:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30223 invoked from network); 27 Mar 2015 08:55:37 -0000
Message-ID: <55151AFD.90203@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
References: <550C495D.9030204@reactos.org>
In-Reply-To: <550C495D.9030204@reactos.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: cve-assign@mitre.org
Date: Fri, 27 Mar 2015 09:55:25 +0100
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: denial of service in Quassel
To: OSS Security List <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

ping, in case it got missed.

On 03/20/2015 05:22 PM, Pierre Schweitzer wrote:
> Dear all,
> 
> The following commit fixed a denial of service in quassel: 
> https://github.com/quassel/quassel/commit/b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8
>
>  It allows a connected client to cause a core crash by sending a
> CTCP request which would be too long and multibyte.
> 
> This is mitigated by the fact that it requires an authed user.
> 
> With my best regards,
> 

- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVFRr9AAoJEHVFVWw9WFsLir0QAIqV2Uv8vGbm4mRE6BcfoOcA
jKVEQJcOghqa/vW4TUf6qLnV6knshfLTIfFwa/d8xRtXDSgChxHaoMIGiMn8hc2p
0Lze6ZU5mDVYFAoMVCLje44m93+sdx3ak8dN2WriqtaibgmWhsbfp8GmfC4Nvy/G
/HpJSkWJoDMz3+QCeQ3qvreWGNjK7D+yLbcbbAcRS1sCbWLcdjYAncUjxzIqPcqv
CyIlw6DLhIYf4gyYxsE6+TfnIvjFHXYcdFpEsaNsk264nzK+26tMc3gs7gVQeIKS
e1o1NHnKg4xpnniIZcB8NHM/IfW3ajiKeZXJ3X3PDF9S8OKhJhVbEAtAIGaqCLhU
OVrKFC1ABWB7hvNvkN935xtbFrku40RfHc9+FF0O6IfXXo9KvsNkRdns0P5zm4rt
D/kitViV53iiVBIOaaw0AMP1icdiluGuOfGPMUjvn6lhLNbqRGCIlvtzeMEujyFe
Eh5ztdirEY3YGvX7tfWLw7aVm8qVCl9IdRmGnAWndSOc0vvDr0yGIYHBLaCxsmsg
f281yyGtoM48p40/D+d0ZQxloKWl/2tpm7meY7pz8F91uaPkJGv6YMRQurdX+gTP
TzF3LYhCowWy1xGR20OwrCgieYwOgRu5noNUQXEdRSyoqEh24Kbd3WHRYvVCQaE9
8XTnWCyI7ViOMgeWcglZ
=5R72
-----END PGP SIGNATURE-----
