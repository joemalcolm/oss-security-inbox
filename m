X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2651" "Tuesday" "24" "November" "2015" "11:03:19" "+0100" "Florian Weimer" "fweimer@redhat.com" "<565435E7.3000007@redhat.com>" "57" "Re: [oss-security] Instruction encoding which prevents execution of a suffix" "^Date:" nil nil "11" "2015112410:03:19" "[oss-security] Instruction encoding which prevents execution of a suffix" (number mark "        fweimer@redh Nov 24   57/2651  " thread-indent "\"Re: [oss-security] Instruction encoding which prevents execution of a suffix\"\n") "<538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>" ("<564EF9B1.4050908@redhat.com>" "<538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25949 invoked by uid 550); 24 Nov 2015 10:03:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25903 invoked from network); 24 Nov 2015 10:03:34 -0000
References: <564EF9B1.4050908@redhat.com>
 <538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>
Message-ID: <565435E7.3000007@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <538567108.21747548.1448331091442.JavaMail.zimbra@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 24 Nov 2015 11:03:19 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Instruction encoding which prevents execution of a
 suffix
To: oss-security@lists.openwall.com

On 11/24/2015 03:11 AM, Josh Bressers wrote:

> If an attacker has full control (and in this case that should be the
> assumption), there's nothing you can do short of some sort of processor
> magic that doesn't exist today (that I'm aware of).
> 
> What if you did the checks inside the kernel operation. Some sort of
> pre-shared secret of sorts to ensure the caller isn't new code.
> 
> Of course this would require a kernel patch that I imagine wouldn't be a
> welcome change. Sometimes it's worth talking through problems like this
> with silly ideas though.

Indeed.  The silly idea I came up covers the special case where the
protected block ends in a system call.  It involves a pseudo-system call
defined with seccomp, which returns the cookie using SECCOMP_RET_ERRNO
and verifies it in the system call at the end of the block.  Or, in more
detail:

A partial solution is known for the case where the code sequence that
needs protection ends in a system call:
\begin{itemize}
\item At process startup, execute the following steps:
  \begin{enumerate}
  \item Generate a secret cookie.
  \item Find an unused system call number.
  \item Using seccomp, install a system call filter for the unused
    system call which returns the secret cookie via the
    \verb|SECCOMP_RET_ERRNO| filter return value, after validating the
    the program counter has the appropriate value (that is, it belongs
    to the code sequence below).
  \item Install a seccomp filter for the actual target system call (at
    the end of the protected block) which checks the secret cookie and
    the program counter (the latter has to match the code sequence
    below).
  \item Wipe the secret cookie and the generated seccomp programs from
    memory.
  \end{enumerate}
\item The protected block has to perform these steps:
  \begin{enumerate}
  \item Load the secret cookie using the special, originally unused
    system call identified at process startup.  Make sure that this
    value stays in a register and is not spilled to the stack.
  \item Perform the desired pre-condition checks.
  \item Perform the original target system call, passing the cookie as
    an additional system call argument.
  \item Clear the register in which the secret cookie value us start.
  \end{enumerate}
\end{itemize}

However, this only works for system calls which have an unused
argument slot available.  The critical \texttt{mmap} system takes six
arguments, so this technique does not work there.  There is also a
potential race condition where the cookie value leaks to signal
handlers which interrupt the execution of the protected block or its
following system call.

