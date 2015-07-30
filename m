X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3674" "Thursday" "30" "July" "2015" "00:26:07" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<55B9A75F.4070902@gmail.com>" "102" "Re: [oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015073004:26:07" "[oss-security] Linux x86_64 NMI security issues" (number mark "U       danielmicay@ Jul 30  102/3674  " thread-indent "\"Re: [oss-security] Linux x86_64 NMI security issues\"\n") "<20150730023722.GA15205@openwall.com>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<20150730023722.GA15205@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16329 invoked by uid 550); 30 Jul 2015 04:26:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16311 invoked from network); 30 Jul 2015 04:26:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=zYg+VkH/qtdDEfcJJ4ZzHfUZ+y3X7lm71b/hLPWnNsQ=;
        b=ou0PslZEt7xBb11pGH/yCYxGA8fRvt+caKF0WVnwAPdlYCWhy2s9JaaY54s6lMQIWV
         L9xaS39m2whccwb96e9IgxWjr7O8P2xFxnPxlWfO2Hf3ariGui5LI2wPs6T6S55vdGwb
         QsPILZiR2bb3IzOCxPrFcsgus4dUEE0hPhbPkLnKudCf626DAvoNV7dwJvF0Wjh7dnLG
         q0a2rctL/yCmX/oNA128NbW4l3mEkRA85xfqMbnU8XrePSndZITmRGR+1bsmBZY2Yynq
         S0rsbDUhRh2eTca4p6uLoieS1lovOqdU7ULpPBKxe2uLo2D1D8dV+kxeye/QI/x8QQ2C
         dv2w==
X-Received: by 10.50.30.10 with SMTP id o10mr1653367igh.86.1438230371746;
        Wed, 29 Jul 2015 21:26:11 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
 <20150730023722.GA15205@openwall.com>
From: Daniel Micay <danielmicay@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55B9A75F.4070902@gmail.com>
Date: Thu, 30 Jul 2015 00:26:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150730023722.GA15205@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="7VUnwVT28DncQIRO7sMcQP1LlA7elkhSI"
Subject: Re: [oss-security] Linux x86_64 NMI security issues

--7VUnwVT28DncQIRO7sMcQP1LlA7elkhSI
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 29/07/15 10:37 PM, Solar Designer wrote:
> On Wed, Jul 22, 2015 at 11:12:00AM -0700, Andy Lutomirski wrote:
>> +++++ CVE-2015-5157 +++++
> [...]
>> Mitigations: Use seccomp to disable perf_event_open or modify_ldt or
>> run with only a single CPU.  To my knowledge, this cannot be exploited
>> on single-processor systems or in single-threaded applications.
> [...]
>> +++++ CVE-2015-3290 +++++
>>
>> High impact NMI bug on x86_64 systems 3.13 and newer, embargoed.  Also f=
ixed by:
>>
>> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D9b6e6a8334d56354853f9c255d1395c2ba570e0a
>>
>> The other fix (synchronous modify_ldt) does *not* fix CVE-2015-3290.
>>
>> You can mitigate CVE-2015-3290 by blocking modify_ldt or
>> perf_event_open using seccomp.  A fully-functional, portable, reliable
>> exploit is privately available and will be published in a week or two.
>> *Patch your systems*
>=20
> I understand how seccomp is usable for sandboxing in a program, but how
> would a sysadmin block syscalls with it?

The filter will be inherited by all child processes and having
CAP_SYS_ADMIN removes the need to set PR_SET_NO_NEW_PRIVS.

A global blacklist would really need to be a feature provided by init
based on a configuration file, ideally with support for parameter filtering
as blacklisting flags would be useful.

You could use init=3D/sbin/seccomp-wrapper with something like this:

    #include <errno.h>
    #include <seccomp.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <unistd.h>
=20=20=20=20
    void check(int rc, const char *function) {
        if (rc) {
            fprintf(stderr, "%s: %s\n", function, strerror(-rc));
            exit(1);
        }
    }
=20=20=20=20
    int main(void) {
        int rc;
        scmp_filter_ctx filter =3D seccomp_init(SCMP_ACT_ALLOW);
        if (!filter) {
            fprintf(stderr, "seccomp_init\n");
            return 1;
        }
        check(seccomp_attr_set(filter, SCMP_FLTATR_CTL_NNP, 0),
              "seccomp_attr_set");
        check(seccomp_rule_add(filter, SCMP_ACT_ERRNO(EPERM), SCMP_SYS(modi=
fy_ldt), 0),
              "seccomp_rule_add");
        check(seccomp_load(filter), "seccomp_load");
=20=20=20=20
        char *argv[] =3D {"/sbin/init", NULL};
        if (execv(argv[0], argv)) {
            perror("execv");
        }
=20=20=20=20
        return 0;
    }

(I haven't actually tested this, but it compiles and should work)


--7VUnwVT28DncQIRO7sMcQP1LlA7elkhSI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVuadiAAoJEPnnEuWa9fIqymoP/1j4sXVUWlhHFKwqjxc4cWtj
pu0ESpeQiUHmRtTTooWtmH+hw0oLNLYtmoEmNuH5oakznnQ2WFM0VDfpifeSpzl9
hFm33QdsBUh2bRtNsS9hIkshkd8/fMcO9VICkUK0DaYJPTdihXzruF/ewOy3WkzS
fC/cZu6xGA4fizjKoq87O0ZMrUCgK+WCXc7OYFidQT02Gg+6uAnNc3l0PdZ7hZKG
UpvEHRH4+b9O0dz1/sBK29kTUume0cwHcaIJA2NFO0Yr2C32g7SpZeFViCMqfFRe
bUlnwXX85ulw8BmHxDHkP/VSEU7RPYUHRS1ks3Dms7gc4st99QiF2UWuDgr9U+hj
LCWibvP14NLx4kvpgPKPsFb4SKyDdfTosJSXWDZm6ER3JyuWvm7n7CBa+VJ1nD7I
v5XXxziZtKLqOJoOCxfFGHvhDlSdkVJoraxc7C9y7pGLadwZMXATnt6R9LfV269A
CNJ0tfVL/M4PhtdygNsrBkqhIuo6Nib7/scrVy6VONCVI5YncLhqZ3hnxJmoGjnG
F8MQq/5i+DGIoYpU7wBtDghLJ1RYTdIRflrLDPY3cMzcFdeMBO9Sd5ExnVGRxNeO
NCsRTVJgxLYAQYXUfxqXVA660zyw4Ve48D37YdORtCfip8wiFdKlIYskUD5SjOnC
Coy4ZW8t8f9Mv4RxYZo0
=t+ey
-----END PGP SIGNATURE-----

--7VUnwVT28DncQIRO7sMcQP1LlA7elkhSI--
