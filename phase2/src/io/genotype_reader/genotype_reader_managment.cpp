////////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2018 Olivier Delaneau, University of Lausanne
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
////////////////////////////////////////////////////////////////////////////////
#include <io/genotype_reader/genotype_reader_header.h>

genotype_reader::genotype_reader(haplotype_set & _H, variant_map & _V) : H(_H), V(_V) {
	nthreads = 1;
	n_common_variants = 0;
	n_scaffold_variants = 0;
	n_rare_variants = 0;
	n_samples = 0;
	funphased = "";
	fphased = "";
	region = "";
	n_scaffold_genotypes = vector < unsigned long > (4, 0);
	n_common_genotypes = vector < unsigned long > (4, 0);
	n_rare_genotypes = vector < unsigned long > (4, 0);
}

genotype_reader::~genotype_reader() {
	nthreads = 1;
	n_common_variants = 0;
	n_scaffold_variants = 0;
	n_rare_variants = 0;
	n_samples = 0;
	funphased = "";
	fphased = "";
	region = "";
	n_scaffold_genotypes = vector < unsigned long > (4, 0);
	n_common_genotypes = vector < unsigned long > (4, 0);
	n_rare_genotypes = vector < unsigned long > (4, 0);
}

void genotype_reader::allocateGenotypes() {


	H.allocate(n_samples, n_scaffold_variants, n_rare_variants, n_common_variants, V);
}

void genotype_reader::setFilenames (string _funphased, string _fphased) { fphased = _fphased; funphased = _funphased; }

void genotype_reader::setThreads(int _threads) { threads = _threads; }

void genotype_reader::setRegion(string _region) { region = _region; }

