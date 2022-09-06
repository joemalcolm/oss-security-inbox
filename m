Received: (qmail 15679 invoked by uid 550); 6 Sep 2022 16:15:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15658 invoked from network); 6 Sep 2022 16:15:05 -0000
From: Russ Allbery <eagle@eyrie.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
	(Georgi Guninski's message of "Tue, 6 Sep 2022 16:26:58 +0300")
Organization: The Eyrie
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
	<20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
	<CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
Date: Tue, 06 Sep 2022 09:14:46 -0700
Message-ID: <87leqwtr7t.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

Georgi Guninski <gguninski@gmail.com> writes:

> If you can crash the python interpreter without syscalls and without
> the kernel killing it for OOM, would you call this DoS?

I would only call it a DoS if it crosses a privilege boundary.  A user can
always DoS themselves; that's just Ctrl-C.  :)

The implication here may be that it's unsafe to use sagemath on untrusted
input, and that by doing so one creates a DoS opportunity.  This would be
far (far!) from the only tool for which that's true, and thus not
particularly exciting, but possibly an opportunity for better
documentation.  (One could also reasonably desire that sagemath was safe
for use with untrusted input as a feature, but that can be a surprisingly
difficult feature to implement.)

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
