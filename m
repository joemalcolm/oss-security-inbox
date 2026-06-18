X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/18/7
Message-ID: <ajQ+ycFqGLgftsW1@256bit.org>
Date: Thu, 18 Jun 2026 20:54:01 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Read with libsodium-encrypted Files in Vim < 9.2.0671
Content-Type: text/plain; charset=utf-8

Out-of-bounds Read with libsodium-encrypted Files in Vim < 9.2.0671
===================================================================
Date: 17.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Integer Underflow (CWE-191), Out-of-bounds Read (CWE-125)

## Summary

When Vim opens a file encrypted with the `VimCrypt~04!` or `VimCrypt~05!`
method (xchacha20poly1305, requires the `+sodium` feature) whose body is shorter
than a single libsodium secretstream header, an unsigned length calculation
underflows and a subsequent decryption call reads far past the end of the input
buffer, crashing Vim.

## Description

`crypt_get_header_len()` validates only the size of the file header (magic,
salt and seed), not the length of the encrypted body that follows.  A file with
a complete header but a body of 1 to 23 bytes therefore passes the size check.
In `crypt_sodium_buffer_decode()` the secretstream header length is then
subtracted from the body length:

```C
    from += crypto_secretstream_xchacha20poly1305_HEADERBYTES;
    len  -= crypto_secretstream_xchacha20poly1305_HEADERBYTES;
```

`len` is a `size_t`, so when the body is shorter than `HEADERBYTES` the
subtraction wraps around to a value close to the maximum.  The wrapped length is
then passed to `crypto_secretstream_xchacha20poly1305_pull()`, which reads that
many bytes from the input buffer.  Because the output buffer was already
allocated using the original (small) body length, the corrupted length widens
the read rather than a write, resulting in an out-of-bounds read and a crash.

## Impact

An attacker who can get a victim to open a crafted, ostensibly encrypted file
and enter any key at the prompt can reliably crash Vim (denial of service).  No
information is disclosed: the decryption call faults on the over-read and never
returns plaintext, and the message authentication would fail in any case.
Exploitation requires the `+sodium` feature, user interaction to open the file
and supply a key, and is limited to a crash.

## Acknowledgements

The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
suggesting a fix.

## References

The issue has been fixed as of Vim patch [v9.2.0671](https://github.com/vim/vim/releases/tag/v9.2.0671).
- [Commit](https://github.com/vim/vim/commit/c8777cec25dcfae89c42e9aff51af61f71c5745f)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-c4j9-wr9j-4486)


Thanks,
Christian
-- 
Kippt der Bauer Milch in'n Tank, wird der Traktor tierisch krank.
