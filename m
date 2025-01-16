Received: (qmail 32237 invoked by uid 550); 16 Jan 2025 19:17:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32213 invoked from network); 16 Jan 2025 19:17:10 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Matthias Gerstner <mgerstner@suse.de>
Cc: Jacob Bachmeyer <jcb62281@gmail.com>,  oss-security@lists.openwall.com
In-Reply-To: <Z4jejSMgNUpzFI6T@kasco.suse.de> (Matthias Gerstner's message of
	"Thu, 16 Jan 2025 11:25:17 +0100")
Organization: The Eyrie
References: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
	<5124504d-3d37-42ad-8bf7-fbbb7f8d0317@gmail.com>
	<Z4jejSMgNUpzFI6T@kasco.suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 16 Jan 2025 11:16:59 -0800
Message-ID: <87a5bqk1qs.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: pam-u2f: problematic PAM_IGNORE return
 values in pam_sm_authenticate() (CVE-2025-23013)

Matthias Gerstner <mgerstner@suse.de> writes:

> I could not find anything conclusive about this topic in the PAM
> documentation and development guides. Actually not even about the exact
> behavior and purpose of PAM_IGNORE.

In one of my old modules (now orphaned), I see I have this piece of
terrifying code:

int
pam_sm_authenticate(pam_handle_t *pamh UNUSED, int flags UNUSED,
                    int argc UNUSED, const char *argv[] UNUSED)
{
    /*
     * We want to return PAM_IGNORE here, but Linux PAM 0.99.7.1 (at least)
     * has a bug that causes PAM_IGNORE to result in authentication failure
     * when the module is marked [default=done].  So we return PAM_SUCCESS,
     * which is dangerous but works in that case.
     */
    return PAM_SUCCESS;
}

This has been a long-standing problem, and it would be great to get it
sorted out somehow and clearly documented and to try to signal to all PAM
modules that they can drop bug workarounds like this.

The situation with expected return statuses and behavior of pam_setcred is
if anything even worse than pam_authenticate. The above problem was in a
module that did not want to implement authentication at all, but since it
had to provide a pam_setcred implementation, was required to also
implement pam_authenticate because pam_setcred otherwise wasn't called. In
this case, this was specifically called out in the documentation:

    Note that this is not an authentication module and will always return
    PAM_SUCCESS to any authentication attempt, so never make this module
    sufficient in your authentication stack. It's only listed as an auth
    module because it provides a pam_setcred implementation and some
    programs need to call pam_setcred rather than pam_open_session (screen
    savers, for instance, to refresh credentials).

But of course who knows if anyone reads the documentation.

My experience as a PAM module maintainer is that I kept making educated
guesses then iterating if I got a bug report, which for a
security-sensitive piece of software is not a comfortable place to be.
It's a recipe for erring on the side of failing open, which is the
opposite of what should be happening, but one tends to only get bug
reports when logins fail.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
