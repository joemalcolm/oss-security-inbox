X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["738" "Friday" "6" "January" "2017" "18:08:36" "+0100" "sivmu" "sivmu@web.de" "<f47526d9-157e-1600-8f64-d737db07753c@web.de>" "15" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010617:08:36" "[oss-security] Re: Firejail local root exploit" (number mark "        sivmu@web.de Jan  6   15/738   " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" ("<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15977 invoked by uid 550); 6 Jan 2017 21:04:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20382 invoked from network); 6 Jan 2017 17:08:52 -0000
References: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
Message-ID: <f47526d9-157e-1600-8f64-d737db07753c@web.de>
MIME-Version: 1.0
In-Reply-To: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K0:x4/FPEa6dXelpomZZdLv1+WaLoYK5nJ2GOahdU0eJGZ810j/nh3
 icC2L4hh7K0OT8On22p+23QMTmuhNR7NQQ08O9UzEKBeySQqbKTV8qGjOT2RAH5XJhn/Kt2
 7BtBXH7LN3Upb6aSfEctIibcuuBPk/THeXCJWPVWUWceofiWsL0kJETC2npE/ieTAiap7Le
 gRDDJ/ShgWCbml9Fy58iw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:pz4vKnPFLaw=:zMYuQ+WZOniZ4Fqaur9qss
 w4hkJc3G2FAsoW8/SjAzZPaeyzdXZ8RqsolfQgGYigZ78jwyNnYpP+PtfFfTRj09CTUnptB1j
 HB44u9ed1cW6IR/2GingzVrPX/eHU6bTiV5E4Y4A8XfobjDf1xVecZ23FyOpruG0zyZKAKll+
 BUUJBEyFnoPHCf6EBDBAVuemJIzxXusNt8hYKTTRFi6P29+HPw6KS3A793t1aRumXNK7A/KWY
 YU+p5gWwYX2cQRsHmrOStWtP9dbvX/dckPqw2PfC77TOZ9QhhgBUJ0XaaawnD3+hv07rLxS/E
 NrsnUjHG/4RUJKw7zVqC76nCL9ws7no2+8NIQKeSSIYb1ZfqDUcaLGhSP4XmmA0U6mlqtwWsu
 vxTu5MXxxHf2EwD0dFgBeHalR6ZhbWYiItlbOZCUNFCrZMURo7yNexKzK+JNnvBq1f78w967e
 mESvKJmxZzj8J3WA18jtuVaX0WG4fQLD2LIdu8RzwSyOJOn1B1nZpB1ukPa44ugdMIhtK1N6h
 1zo6Gs3FG2NdF33yfjPRm8tD3jIx+TnAhNtOGGGETySVZgWlU+m7CsHvKK8ST5pVFx9xvChu8
 I9UncvQabLRN6CATqeY/cc0GPVfxYRj8wdUDY/IqswnggJ5gZ4tlqDmJbIZjwILokJSsdOY+S
 M/3HcLnpz/YqghuilqRAKqdCC2/bj2e3N/NYRGalxSw4cGNP0vtyxLtrA8c38W3kIJW4tPsLD
 xS0Ju+1yQbIeh86EnVoIO44Ad4LU1fUdr+EctTiWDP0Nt8TTaQEVx9V3XMYrrVhSCQg0onECp
 Qd9u5V2
Date: Fri, 6 Jan 2017 18:08:36 +0100
From: sivmu <sivmu@web.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

Am 05.01.2017 um 23:37 schrieb Martin Carpenter:
> Setuid-root makes me sad, copy_file() worries me still and the ability
> for a non-priv user to run any seccomp filter on anything feels like an
> accident waiting to happen (assuming it cannot already be exploited).

Non-priv users can run seccomp filter on anything anyway.
Seccomp does not rewuire any privileges and as far as I know it onl
restricts permissions (to use syscalls) and never expands them.


Also the question is how many of these issues are specific to firejail
and how many of them also applied to (user)namespaces in general or
wrapper tool lke bubblewrap that utilise namespaces as firejail does.

Meaning some of these issues could applie to a lot more programms.
