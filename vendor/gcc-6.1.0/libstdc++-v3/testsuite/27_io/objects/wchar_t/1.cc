// 2003-05-01 Petur Runolfsson  <peturr02@ru.is>

// Copyright (C) 2000-2016 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING3.  If not see
// <http://www.gnu.org/licenses/>.

// Include all the headers except for iostream.
#include <algorithm>
#include <bitset>
#include <complex>
#include <deque>
#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
#include <ios>
#include <iosfwd>
#include <istream>
#include <iterator>
#include <limits>
#include <list>
#include <locale>
#include <map>
#include <memory>
#include <new>
#include <numeric>
#include <ostream>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <stdexcept>
#include <streambuf>
#include <string>
#include <typeinfo>
#include <utility>
#include <valarray>
#include <vector>
#include <cassert>
#include <cctype>
#include <cerrno>
#include <cfloat>
#include <ciso646>
#include <climits>
#include <clocale>
#include <cmath>
#include <csetjmp>
#include <csignal>
#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <cwchar>
#include <cwctype>
#include <testsuite_hooks.h>

// Include iostream last, just to make is as difficult as possible to
// properly initialize the standard iostream objects.
#include <iostream>

// Make sure all the standard streams are defined.
void
test01()
{
  bool test __attribute__((unused)) = true;

  wchar_t array2[20];
  typedef std::wios::traits_type wtraits_type;
  wtraits_type::int_type wi = 15;
  wtraits_type::copy(array2, L"testing istream", wi);
  std::wcout << L"testing wcout" << std::endl;
  std::wcerr << L"testing wcerr" << std::endl;
  VERIFY( std::wcerr.flags() & std::ios_base::unitbuf );
  std::wclog << L"testing wclog" << std::endl;
  // std::wcin >> array2; // requires somebody to type something in.
  VERIFY( std::wcin.tie() == &std::wcout );
}


int 
main()
{
  test01();  
  return 0;
}