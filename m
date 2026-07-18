X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/18/2
Message-ID: <956b765e-dad3-4b71-9b83-fbd8da3bfca4@free.fr>
Date: Sat, 18 Jul 2026 21:05:53 +0200
From: Gabriel Corona <gabriel.corona@...e.fr>
To: oss-security@...ts.openwall.com
Subject: User prompt injection (CSRF) of the llama-server's Web UI (llama.cpp)
Content-Type: text/plain; charset=utf-8

Hi,

The Web UI of llama-server accepts a query parameter (?q=...) as an 
initial user message in a new conversation and auto-submits this message 
(CSRF). An attacker can trigger an arbitrary initial message through a 
malicious link. If tool execution is enabled, this can be used for 
arbitrary code execution, data exfiltration, etc.

By default, the user is asked to allow each tool execution. The user can 
choose to allow execution only once or to always use execution without 
confirmation.

Depending on which tools are enabled, the impact can be:

* arbitrary shell command execution;
* data exfiltration;
* etc.

The following solution can be used to mitigate this:

* disable the Web UI (--no-webui);
* do not enabled tools (through --tools);
* do not allow tool execution without confirmation (user configuration);
* sandbox.

Non-working mitigations:

* using authentication (API keys) does not help if the API key is
   configured for the target user.

This has been reported as a public issue (#25790 [1]) as requested in 
the project's security instructions.

Tested on b1003.

[1] https://github.com/ggml-org/llama.cpp/issues/25790
[2] https://www.varonis.com/blog/reprompt

Regards,

Gabriel Corona


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
