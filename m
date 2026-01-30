Received: (qmail 7746 invoked by uid 550); 30 Jan 2026 21:03:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7689 invoked from network); 30 Jan 2026 21:03:48 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-103G0052e8d1a61-f64b-4297-ac05-330924394983,
                    E81ACD02AEA081027B791CEC7162192E1D04A173) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.179.146
Date: Fri, 30 Jan 2026 22:03:36 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20260130210336.rbloiah3sbpel5zv@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
X-Ovh-Tracer-Id: 2065744854453660881
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTFFCRZNntmt3qEUM/rYjQpyc7YLASdygk/pLHIQ+qquYlbHK6lwX2Igp0PCVZckJSdeb1EWeEJfv+JmaQh4uKi3R13Shdv/K1EGUd/gXUY35bwshYvDjEzdK6woA/OBUvIbLtVq5n3w26VlSS1phnnVv9lx2tKU6+bYEQ7DyUd7Em4wq70kkRhKA+0VCT28mM5xwG/V/oQPYE8qXKxW57XL+w1zmhIF9U1QFP9ZdQZl6x1NcY2h/n4JOFOsbYhzdWVIxfEOgjIavmiqJILyYJ00AddOzYo1HGe5p/c9MMWwp6uQDHsUmBljtSWdpwHPGiuLcCfS3JqxvDEt0QbgpOpXmJE0yvPxiNsGOnBG8ToHuqlbphok67n6Xis5Np3V4s3suJsw6LPfXX1LWXN+9nb3pqSx/BY34FPL55qzvGsdCTMYLasSyGEB5aOZeR16tFXoLSz3N4qdX6eGHP/8SZ0bfJo6lQ7mo5+k40mhXgzwevb2dwiRpZNFCpjiqaboG1gXWCinNYlf23H9t4NBKL2xB0ETDDqmiXw7VDPwhpC2DNWdKZFp3pf8kXGGKMiFhZ+kEDNoQpDTuAbFWOchDjfpnEvJ87FGur7SAdaZjHtg+se8qbV7S08y5uORaLb7UY10QCIpvFHZZaRkrJZTsiUCBleLAqNyC1ixARr0PiD/qA
Subject: Re: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

TL;DR: CVE-2025-56005 is a nothingburger.

* Alan Coopersmith <alan.coopersmith@oracle.com>, 2026-01-23 11:06:
>https://github.com/bohmiiidd/Undocumented-RCE-in-PLY claims:
>
>>Undocumented Remote Code Execution in PLY CVE-2025-56005

Calling this "remote" is nonsense. Such sensationalism makes me doubt 
this advisory was written in good faith.

>>The `picklefile` parameter causes PLY to deserialize a `.pkl` file 
>>using Python’s `pickle.load()` **without validation**.

The content of the pickle influences how the input is parsed, so if an 
attacker had control over that, it would be a vulnerability in the 
program using PLY, regardless of how safe the deserialization is.

I don't see unconstrained unpickling as a vulnerability in PLY; it's 
just a missing hardening opportunity.

>>This parameter is *not documented* in the official PLY documentation 
>>or GitHub repository,

It's documented in the CHANGES file:

>Added a new picklefile option to yacc() to write the parsing tables to 
>a filename using the pickle module. Here is how it works:
>
>    yacc(picklefile="parsetab.p")
>
>This option can be used if the normal parsetab.py file is extremely 
>large. For example, on jython, it is impossible to read parsing tables 
>if the parsetab.py exceeds a certain threshold.
>
>The filename supplied to the picklefile option is opened relative to 
>the current working directory of the Python interpreter. If you need to 
>refer to the file elsewhere, you will need to supply an absolute or 
>relative path.

(How come we're worried about backdoors in the pickle, but not in 
parsetab.py?)

OK, I do see a weakness in the API here: Putting the pickle in cwd (as 
the example hints) is a bad idea, and some people might be tempted to 
put them in /tmp, which is much worse. In contrast, parsetab.py is 
written into the same directory as the parser module, which is fine.


PS: I was curious if there's any real-world software that makes use of 
this parameter, but to my surprise I found one! Well, not really:

https://github.com/mozilla-firefox/firefox/commit/2a95ef8f868f00e6
self.parser = yacc.yacc(module=self,
                         outputdir=outputdir,
                         tabmodule='webidlyacc',
                         errorlog=yacc.NullLogger()
                         # Pickling the grammar is a speedup in
                         # some cases (older Python?) but a
                         # significant slowdown in others.
                         # We're not pickling for now, until it
                         # becomes a speedup again.
                         # , picklefile='WebIDLGrammar.pkl'
                     )

-- 
Jakub Wilk
