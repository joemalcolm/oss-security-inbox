Received: (qmail 3239 invoked by uid 550); 3 Apr 2025 16:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5650 invoked from network); 3 Apr 2025 15:08:16 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
References: <87bjthw108.fsf@gentoo.org>
User-Agent: mu4e 1.12.9; emacs 31.0.50
CC: Lasse Collin <lasse.collin@tukaani.org>, Sebastian Andrzej Siewior
 <sebastian@breakpoint.cc>
Date: Thu, 03 Apr 2025 16:08:00 +0100
Message-ID: <871pu9gu5r.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] XZ Utils: Threaded decoder frees memory too early (CVE-2025-31115)

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Hi!

An issue has been found in xz. I emphasise that it's not an issue
related to the nasty events of last year, and it wasn't introduced by
Jia. Nonetheless, it's a bug with some security impact.

This was privately communicated to the private distros ML on 2025-03-31.

We have attached patches which will be part of 5.8.1 and should apply
cleanly to the affected versions.

The CVE for this issue, allocated by GitHub is CVE-2025-31115. I'm
sending this on behalf of Lasse Collin (cc'd).

..

Advisory link: https://tukaani.org/xz/threaded-decoder-early-free.html
GitHub advisory link: https://github.com/tukaani-project/xz/security/advisories/GHSA-6cc8-p5mm-29w2

# Impact

The threaded .xz decoder in liblzma has a bug that can at least result
in a crash (denial of service).  The effects include heap use after free
and writing to an address based on the null pointer plus an offset.

This affects XZ Utils versions from 5.3.3alpha to 5.8.0. Applications
and libraries that use the lzma_stream_decoder_mt function are affected.

# Patches

The bug has been fixed in XZ Utils 5.8.1, and the fix has been committed
to the v5.4, v5.6, v5.8, and master branches in the xz Git
repository. No new release packages will be made from the old stable
branches, but a standalone patch is available that applies to all
affected releases (attached to this email).

For convenience, links are below for...

5.4:
* https://github.com/tukaani-project/xz/commit/77bc2d6f3b6e1506c122b03cff49c902219869e3
* https://github.com/tukaani-project/xz/commit/bdb788137e1f1d967e0c9d885b859e5b95c1b5bf
* https://github.com/tukaani-project/xz/commit/2ce9ab6588a94cbf04a9c174e562ea5feb00cfb3
* https://github.com/tukaani-project/xz/commit/9a9c17712bd2a070581d9239692e527a2fe13845
* https://github.com/tukaani-project/xz/commit/c8bb46c5a16ed02401f4a0b46c74f0f46c1b6434

5.6:
* https://github.com/tukaani-project/xz/commit/fb1210f215d61bd3ea373d61e4d86d29648e1bab
* https://github.com/tukaani-project/xz/commit/c1a91b8baeb947c5b232a6c3d6319267131830bc
* https://github.com/tukaani-project/xz/commit/f74cf18ad084a9185d8ae148d89265860aa8004c
* https://github.com/tukaani-project/xz/commit/1b874b4f04909b7bb5259cb612ecef39a434dde8
* https://github.com/tukaani-project/xz/commit/6ff5b8c55960f9ebc917b668bd3567ef217175fa

5.8:
* https://github.com/tukaani-project/xz/commit/b9d168eee4fb6393b4fe207c0aeb5faee316ca1a
* https://github.com/tukaani-project/xz/commit/831b55b971cf579ee16a854f177c36b20d3c6999
* https://github.com/tukaani-project/xz/commit/c0c835964dfaeb2513a3c0bdb642105152fe9f34
* https://github.com/tukaani-project/xz/commit/d5a2ffe41bb77b918a8c96084885d4dbe4bf6480
* https://github.com/tukaani-project/xz/commit/8188048854e8d11071b8a50d093c74f4c030acc9

and xz-5.8.1 has just been released.

# Workarounds

The single-threaded .xz decoder (lzma_stream_decoder) isn't
affected. The commands xz --decompress --threads=1 and xzdec use the
single-threaded decoder.

# Credits

Thanks to Harri K. Koskinen for discovering and reporting this issue.

Thanks to Sebastian Andrzej Siewior for reviewing the patches.

Thanks to Sam James for general help.

# Why fuzzing didn't find this?

XZ Utils is fuzzed by OSS-Fuzz. However, there was no program to fuzz
the multithreaded .xz decoder.  Even if there had been, it likely would
have used the fuzz_code function in fuzz_common.h like the existing fuzz
targets did. That function called lzma_code in such a way that it would
have been impossible to trigger this bug.

Lasse Collin has been working on improving the fuzzer and with some
changes, we've been able to make it detect the bug.

See https://github.com/tukaani-project/xz/commit/48440e24a25911ae59e8518b67a1e0f6f1c293bf
and https://github.com/tukaani-project/xz/commit/513cabcf7f5ce1c3ed0619e791393fc53d1dbbd0
for that.


--=-=-=
Content-Type: text/x-patch
Content-Disposition: attachment; filename=xz-cve-2025-31115.patch
Content-Transfer-Encoding: quoted-printable

# Fix CVE-2025-31115 in XZ Utils 5.3.3alpha to 5.8.0
# This applies to all affected releases.
# https://tukaani.org/xz/threaded-decoder-early-free.html

=46rom 831b55b971cf579ee16a854f177c36b20d3c6999 Mon Sep 17 00:00:00 2001
From: Lasse Collin <lasse.collin@tukaani.org>
Date: Thu, 3 Apr 2025 14:34:42 +0300
Subject: [PATCH 1/4] liblzma: mt dec: Fix a comment

Reviewed-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Thanks-to: Sam James <sam@gentoo.org>
---
 src/liblzma/common/stream_decoder_mt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/liblzma/common/stream_decoder_mt.c b/src/liblzma/common/st=
ream_decoder_mt.c
index 22c9375f..812b745d 100644
--- a/src/liblzma/common/stream_decoder_mt.c
+++ b/src/liblzma/common/stream_decoder_mt.c
@@ -347,7 +347,7 @@ worker_enable_partial_update(void *thr_ptr)
=20
=20
 /// Things do to at THR_STOP or when finishing a Block.
-/// This is called with thr->mutex locked.
+/// This is called with thr->coder->mutex locked.
 static void
 worker_stop(struct worker_thread *thr)
 {
--=20
2.49.0


=46rom c0c835964dfaeb2513a3c0bdb642105152fe9f34 Mon Sep 17 00:00:00 2001
From: Lasse Collin <lasse.collin@tukaani.org>
Date: Thu, 3 Apr 2025 14:34:42 +0300
Subject: [PATCH 2/4] liblzma: mt dec: Simplify by removing the THR_STOP sta=
te

The main thread can directly set THR_IDLE in threads_stop() which is
called when errors are detected. threads_stop() won't return the stopped
threads to the pool or free the memory pointed by thr->in anymore, but
it doesn't matter because the existing workers won't be reused after
an error. The resources will be cleaned up when threads_end() is
called (reinitializing the decoder always calls threads_end()).

Reviewed-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Thanks-to: Sam James <sam@gentoo.org>
---
 src/liblzma/common/stream_decoder_mt.c | 75 ++++++++++----------------
 1 file changed, 29 insertions(+), 46 deletions(-)

diff --git a/src/liblzma/common/stream_decoder_mt.c b/src/liblzma/common/st=
ream_decoder_mt.c
index 812b745d..82962c64 100644
--- a/src/liblzma/common/stream_decoder_mt.c
+++ b/src/liblzma/common/stream_decoder_mt.c
@@ -23,15 +23,10 @@ typedef enum {
 	THR_IDLE,
=20
 	/// Decoding is in progress.
-	/// Main thread may change this to THR_STOP or THR_EXIT.
+	/// Main thread may change this to THR_IDLE or THR_EXIT.
 	/// The worker thread may change this to THR_IDLE.
 	THR_RUN,
=20
-	/// The main thread wants the thread to stop whatever it was doing
-	/// but not exit. Main thread may change this to THR_EXIT.
-	/// The worker thread may change this to THR_IDLE.
-	THR_STOP,
-
 	/// The main thread wants the thread to exit.
 	THR_EXIT,
=20
@@ -346,27 +341,6 @@ worker_enable_partial_update(void *thr_ptr)
 }
=20
=20
-/// Things do to at THR_STOP or when finishing a Block.
-/// This is called with thr->coder->mutex locked.
-static void
-worker_stop(struct worker_thread *thr)
-{
-	// Update memory usage counters.
-	thr->coder->mem_in_use -=3D thr->in_size;
-	thr->in_size =3D 0; // thr->in was freed above.
-
-	thr->coder->mem_in_use -=3D thr->mem_filters;
-	thr->coder->mem_cached +=3D thr->mem_filters;
-
-	// Put this thread to the stack of free threads.
-	thr->next =3D thr->coder->threads_free;
-	thr->coder->threads_free =3D thr;
-
-	mythread_cond_signal(&thr->coder->cond);
-	return;
-}
-
-
 static MYTHREAD_RET_TYPE
 worker_decoder(void *thr_ptr)
 {
@@ -397,17 +371,6 @@ next_loop_unlocked:
 		return MYTHREAD_RET_VALUE;
 	}
=20
-	if (thr->state =3D=3D THR_STOP) {
-		thr->state =3D THR_IDLE;
-		mythread_mutex_unlock(&thr->mutex);
-
-		mythread_sync(thr->coder->mutex) {
-			worker_stop(thr);
-		}
-
-		goto next_loop_lock;
-	}
-
 	assert(thr->state =3D=3D THR_RUN);
=20
 	// Update progress info for get_progress().
@@ -510,7 +473,22 @@ next_loop_unlocked:
 				&& thr->coder->thread_error =3D=3D LZMA_OK)
 			thr->coder->thread_error =3D ret;
=20
-		worker_stop(thr);
+		// Return the worker thread to the stack of available
+		// threads.
+		{
+			// Update memory usage counters.
+			thr->coder->mem_in_use -=3D thr->in_size;
+			thr->in_size =3D 0; // thr->in was freed above.
+
+			thr->coder->mem_in_use -=3D thr->mem_filters;
+			thr->coder->mem_cached +=3D thr->mem_filters;
+
+			// Put this thread to the stack of free threads.
+			thr->next =3D thr->coder->threads_free;
+			thr->coder->threads_free =3D thr;
+		}
+
+		mythread_cond_signal(&thr->coder->cond);
 	}
=20
 	goto next_loop_lock;
@@ -544,17 +522,22 @@ threads_end(struct lzma_stream_coder *coder, const lz=
ma_allocator *allocator)
 }
=20
=20
+/// Tell worker threads to stop without doing any cleaning up.
+/// The clean up will be done when threads_exit() is called;
+/// it's not possible to reuse the threads after threads_stop().
+///
+/// This is called before returning an unrecoverable error code
+/// to the application. It would be waste of processor time
+/// to keep the threads running in such a situation.
 static void
 threads_stop(struct lzma_stream_coder *coder)
 {
 	for (uint32_t i =3D 0; i < coder->threads_initialized; ++i) {
+		// The threads that are in the THR_RUN state will stop
+		// when they check the state the next time. There's no
+		// need to signal coder->threads[i].cond.
 		mythread_sync(coder->threads[i].mutex) {
-			// The state must be changed conditionally because
-			// THR_IDLE -> THR_STOP is not a valid state change.
-			if (coder->threads[i].state !=3D THR_IDLE) {
-				coder->threads[i].state =3D THR_STOP;
-				mythread_cond_signal(&coder->threads[i].cond);
-			}
+			coder->threads[i].state =3D THR_IDLE;
 		}
 	}
=20
@@ -1941,7 +1924,7 @@ stream_decoder_mt_init(lzma_next_coder *next, const l=
zma_allocator *allocator,
 	// accounting from scratch, too. Changes in filter and block sizes may
 	// affect number of threads.
 	//
-	// FIXME? Reusing should be easy but unlike the single-threaded
+	// Reusing threads doesn't seem worth it. Unlike the single-threaded
 	// decoder, with some types of input file combinations reusing
 	// could leave quite a lot of memory allocated but unused (first
 	// file could allocate a lot, the next files could use fewer
--=20
2.49.0


=46rom d5a2ffe41bb77b918a8c96084885d4dbe4bf6480 Mon Sep 17 00:00:00 2001
From: Lasse Collin <lasse.collin@tukaani.org>
Date: Thu, 3 Apr 2025 14:34:42 +0300
Subject: [PATCH 3/4] liblzma: mt dec: Don't free the input buffer too early
 (CVE-2025-31115)

The input buffer must be valid as long as the main thread is writing
to the worker-specific input buffer. Fix it by making the worker
thread not free the buffer on errors and not return the worker thread to
the pool. The input buffer will be freed when threads_end() is called.

With invalid input, the bug could at least result in a crash. The
effects include heap use after free and writing to an address based
on the null pointer plus an offset.

The bug has been there since the first committed version of the threaded
decoder and thus affects versions from 5.3.3alpha to 5.8.0.

As the commit message in 4cce3e27f529 says, I had made significant
changes on top of Sebastian's patch. This bug was indeed introduced
by my changes; it wasn't in Sebastian's version.

Thanks to Harri K. Koskinen for discovering and reporting this issue.

Fixes: 4cce3e27f529 ("liblzma: Add threaded .xz decompressor.")
Reported-by: Harri K. Koskinen <x64nop@nannu.org>
Reviewed-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Thanks-to: Sam James <sam@gentoo.org>
---
 src/liblzma/common/stream_decoder_mt.c | 31 ++++++++++++++++++--------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/src/liblzma/common/stream_decoder_mt.c b/src/liblzma/common/st=
ream_decoder_mt.c
index 82962c64..98aabcff 100644
--- a/src/liblzma/common/stream_decoder_mt.c
+++ b/src/liblzma/common/stream_decoder_mt.c
@@ -435,8 +435,7 @@ next_loop_unlocked:
 	}
=20
 	// Either we finished successfully (LZMA_STREAM_END) or an error
-	// occurred. Both cases are handled almost identically. The error
-	// case requires updating thr->coder->thread_error.
+	// occurred.
 	//
 	// The sizes are in the Block Header and the Block decoder
 	// checks that they match, thus we know these:
@@ -444,16 +443,30 @@ next_loop_unlocked:
 	assert(ret !=3D LZMA_STREAM_END
 		|| thr->out_pos =3D=3D thr->block_options.uncompressed_size);
=20
-	// Free the input buffer. Don't update in_size as we need
-	// it later to update thr->coder->mem_in_use.
-	lzma_free(thr->in, thr->allocator);
-	thr->in =3D NULL;
-
 	mythread_sync(thr->mutex) {
+		// Block decoder ensures this, but do a sanity check anyway
+		// because thr->in_filled < thr->in_size means that the main
+		// thread is still writing to thr->in.
+		if (ret =3D=3D LZMA_STREAM_END && thr->in_filled !=3D thr->in_size) {
+			assert(0);
+			ret =3D LZMA_PROG_ERROR;
+		}
+
 		if (thr->state !=3D THR_EXIT)
 			thr->state =3D THR_IDLE;
 	}
=20
+	// Free the input buffer. Don't update in_size as we need
+	// it later to update thr->coder->mem_in_use.
+	//
+	// This step is skipped if an error occurred because the main thread
+	// might still be writing to thr->in. The memory will be freed after
+	// threads_end() sets thr->state =3D THR_EXIT.
+	if (ret =3D=3D LZMA_STREAM_END) {
+		lzma_free(thr->in, thr->allocator);
+		thr->in =3D NULL;
+	}
+
 	mythread_sync(thr->coder->mutex) {
 		// Move our progress info to the main thread.
 		thr->coder->progress_in +=3D thr->in_pos;
@@ -474,8 +487,8 @@ next_loop_unlocked:
 			thr->coder->thread_error =3D ret;
=20
 		// Return the worker thread to the stack of available
-		// threads.
-		{
+		// threads only if no errors occurred.
+		if (ret =3D=3D LZMA_STREAM_END) {
 			// Update memory usage counters.
 			thr->coder->mem_in_use -=3D thr->in_size;
 			thr->in_size =3D 0; // thr->in was freed above.
--=20
2.49.0


=46rom 8188048854e8d11071b8a50d093c74f4c030acc9 Mon Sep 17 00:00:00 2001
From: Lasse Collin <lasse.collin@tukaani.org>
Date: Thu, 3 Apr 2025 14:34:42 +0300
Subject: [PATCH 4/4] liblzma: mt dec: Don't modify thr->in_size in the work=
er
 thread

Don't set thr->in_size =3D 0 when returning the thread to the stack of
available threads. Not only is it useless, but the main thread may
read the value in SEQ_BLOCK_THR_RUN. With valid inputs, it made
no difference if the main thread saw the original value or 0. With
invalid inputs (when worker thread stops early), thr->in_size was
no longer modified after the previous commit with the security fix
("Don't free the input buffer too early").

So while the bug appears harmless now, it's important to fix it because
the variable was being modified without proper locking. It's trivial
to fix because there is no need to change the value. Only main thread
needs to set the value in (in SEQ_BLOCK_THR_INIT) when starting a new
Block before the worker thread is activated.

Fixes: 4cce3e27f529 ("liblzma: Add threaded .xz decompressor.")
Reviewed-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Thanks-to: Sam James <sam@gentoo.org>
---
 src/liblzma/common/stream_decoder_mt.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/src/liblzma/common/stream_decoder_mt.c b/src/liblzma/common/st=
ream_decoder_mt.c
index 98aabcff..1fa92220 100644
--- a/src/liblzma/common/stream_decoder_mt.c
+++ b/src/liblzma/common/stream_decoder_mt.c
@@ -491,8 +491,6 @@ next_loop_unlocked:
 		if (ret =3D=3D LZMA_STREAM_END) {
 			// Update memory usage counters.
 			thr->coder->mem_in_use -=3D thr->in_size;
-			thr->in_size =3D 0; // thr->in was freed above.
-
 			thr->coder->mem_in_use -=3D thr->mem_filters;
 			thr->coder->mem_cached +=3D thr->mem_filters;
=20
@@ -1554,6 +1552,10 @@ stream_decode_mt(void *coder_ptr, const lzma_allocat=
or *allocator,
 		}
=20
 		// Return if the input didn't contain the whole Block.
+		//
+		// NOTE: When we updated coder->thr->in_filled a few lines
+		// above, the worker thread might by now have finished its
+		// work and returned itself back to the stack of free threads.
 		if (coder->thr->in_filled < coder->thr->in_size) {
 			assert(*in_pos =3D=3D in_size);
 			return LZMA_OK;
--=20
2.49.0


--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZ+6kUV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZBUkQD/XChVsP4mLvWOdb6Qg0K2dhSuBRgQOlKFNq8H
dIuGo7cA/3OVfrgQabOkpopy4kybn6Z2DbudKCfPoXSIZDVTc7sE
=wAPL
-----END PGP SIGNATURE-----
--==-=-=--
