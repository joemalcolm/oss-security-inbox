X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["706" "Friday" "29" "January" "2016" "15:52:26" "-0500" "anarcat" "anarcat@orangeseeds.org" "<87twlwqfat.fsf@marcos.anarc.at>" "23" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "1" "2016012920:52:26" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" (number mark "        anarcat@oran Jan 29   23/706   " thread-indent "\"[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11\"\n") "<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27658 invoked by uid 550); 29 Jan 2016 20:55:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26608 invoked from network); 29 Jan 2016 20:55:16 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <87twlwqfat.fsf@marcos.anarc.at>
References: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: marcos.anarc.at
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:OqWCG8SmBLb9C0klApbzBQFCFX4=
Date: Fri, 29 Jan 2016 15:52:26 -0500
From: anarcat <anarcat@orangeseeds.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

I can't actually reproduce this on Debian, which runs 2.11 all the way
back to squeeze:

(gdb) run -i < ../overflow.cpio
Starting program: /bin/cpio -i < ../overflow.cpio
[Thread debugging using libthread_db enabled]
Using host libthread_db library
"/lib/x86_64-linux-gnu/libthread_db.so.1".
/bin/cpio: Malformed number0000000
/bin/cpio: warning: skipped 8 bytes of junk
/bin/cpio: Substituting `.' for empty member name
/bin/cpio: . not created: newer or same age version exists
/bin/cpio: premature end of file
[Inferior 1 (process 191) exited with code 02]

Did i miss something?

a.
-- 
The United States is a nation of laws:
badly written and randomly enforced.
                        - Frank Zappa

