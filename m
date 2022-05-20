Received: (qmail 15917 invoked by uid 550); 20 May 2022 20:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15896 invoked from network); 20 May 2022 20:14:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1653077677;
	bh=HJ7m7tMm9jnbNSgXEXQjhvFYvC8+3HLwLUOEu4nZQ8o=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=dt5oA8xUih2rKjOjISV6No/SXh6942RcTlJ4CaICLmnlqhuruyxAjVJWB020rClEA
	 NnVIwcEUgBQkB5EN3JFkBwbWgUurXkKywo1W6Syc8y8gXFD3GAQeKyNBTN6vEt0Nw2
	 whNamQNdCECpOU8Dbic5nAOZqkLOiITj3mZZny6w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
MIME-Version: 1.0
Message-ID: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
From: Norbert Slusarek <nslusarek@gmx.net>
To: oss-security@lists.openwall.com
Cc: peterz@infradead.org
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 May 2022 22:14:36 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:2HyKRKNt4F6/AwusP4zhydvu2wT7d3EVBIuAxZX4UbCg0/d5BIkZdJv/Mc97VJnVKn++S
 mzw6TLUvSjnKJIRhEi8peJMjpTLgH8rHLKSswlItRpwJBGEY5VRukGkjuZ87cAWLKZZZ8N2IaDvW
 rPZnHY7WdNPXBQB2DVDu6bMKnOZXweO1f3pSJlEr21jDhGKhrhQbhhe2jaJn1rtQ0/c6BF5980zI
 wcwHfvY9XunQAOVYh3F/9OxCwmSOkEw/1g+aybL53tZTa67UI7CUU9s5JCSNuGneti8lEgqId5xu
 xU=
X-UI-Out-Filterresults: notjunk:1;V03:K0:nTnuAczkyTQ=:GeJnDk6AJMf3zUNYCQmzQ8
 +z0OorzPVgjKzKtWRqBOtIqDB974X/LjHDuceHL+kmw7D6b2VN/QmxyS3jAR3UcoBv0zXbvjh
 dkhT8zoSHmaT0hzA8HRlul1F/ep/X7j/tZeHq6iNy1xys55IhnUHweK5cYQb2koLfuqKLj4vn
 nY2Jpj+KYEEoI80zkDbKUWtGa1l3RuvQf2BjXfVsSXTRI0aAjAbQzupqA3ERbiPH6szsfwkX/
 Dhh307xz8O0rmHDUwJs4SRMSePf26HA3VOPN/yyNgbXK9Zr+IC79QuIGqrQqYgfrUdP0DblwT
 FDeDI6aHXKUfpjFrefY8bi5u1BuBEW0vaAFJm/84FRBpmYdK20jjzDBOfgqAnhfsiogdGKbYT
 fcIgsJGk8zzQfGHYB3VZhUgI93vfrEc1uaUPMIojlzBwiC4XnXdPtZdppFvr1YxaH8uqz6WxF
 pUkzyh3GqmoMDxcos/0V697W19YkwtqOtSVcsIMvDOT7OoZElgD+7hAcpzIZ9Vo2JLM59UKwM
 yBlHRg2qoyxKDmTfuX0AxI0iVEgV2nYwURqz1Yf7j+l0G2lzVuY71OtSvkNuiubewYFjAcUya
 CeGYrgEw29wHy6tIYDlZyjjR8W6nf5mtNfIXa3kU3hB1wc+9P1UPDoarj9o8X/+hA9/JodrFQ
 bJ0QfUzEtp2B6ld3iMtQAxoYreg1ZW6BjswZCSvWHgR2B0KxkPhBGXQgEMAAnsegORp1icR+u
 EOwrcjDPFvC2GnplhctD6KShf2lTJJ3kqqfS9QRxU0VxYUXeXhDtMCOseABZrxspYQrOYagJb
 A6OAN1K
Subject: [oss-security] CVE-2022-1729: race condition in Linux perf subsystem leads to
 local privilege escalation

Hello,

this is an announcement for a recently reported vulnerability (CVE-2022-1729) in the perf subsystem
of the Linux kernel. The issue is a race condition which was proven to allow for a local privilege
escalation to root on current kernel version >= 5.4.193, but the bug seems to exist since kernel
version 4.0-rc1 (patch fixes the commit to this version).
Fortunately, major Linux distributions often restrict the use of perf for unprivileged users by
setting the sysctl variable kernel.perf_event_paranoid >= 3, effectively rendering the
vulnerability harmless.

The patch can be found at
https://lkml.kernel.org/r/20220520183806.GV2578@worktop.programming.kicks-ass.net

Details
-------

The following syscall order triggers the bug:

1) fd0 = perf_event_open, type PERF_TYPE_TRACEPOINT is created.

Called simultaneously:

2) thread 1: fd1 = perf_event_open, type PERF_TYPE_HARDWARE, group leader fd0
3) thread 2: fd2 = perf_event_open, type PERF_TYPE_SOFTWARE, group leader fd0

4) thread 1: fd1 is of type PERF_TYPE_HARDWARE, and the group leader is of
	type PERF_TYPE_TRACEPOINT. Because fd1 is a hardware event in a software event group,
	the whole group is required to move to a hardware context, so move_group is set to 1.

5) thread 1: fd1 takes the context lock.

6) thread 2: fd2 is of type PERF_TYPE_SOFTWARE, so no group migration is needed and
	move_group is set to 0. This thread *waits* at the lock while it's held by fd1.

7) thread 1: all siblings of fd1 and the group leader fd0 are moved from
	the current software context to a new hardware context.

8) thread 1: creation of fd1 is finished and the lock released.

9) thread 2: fd2 acquires the lock, and it is still attached to the old software context,
	even though its group leader fd0 is attached to the new hardware context.

The following sequence of event closes leaves a dangling pointer in the hardware context:

1) close fd0
2) close fd1
	All of its siblings (fd2 in this case) are attached to a new context.
	Now, fd2 is in two contexts at the same time.
3) close fd2
	The event is removed from its old software context and freed, but a dangling pointer still persists
	in the newer context. For instance, merge_sched_in() can access this freed event when scheduling
	in events for the hardware context, leading to a use-after-free.


Regards,
Norbert
