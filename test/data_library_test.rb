require_relative 'test_helper'

# DataLibraryTest.
# @abstract
#   Tests the Data library.
class DataLibraryTest < Minitest::Test

  # test_conf_doc_f_ex().
  # @abstract
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and 
  #   README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')

  end

  # test_version_declared().
  # @abstract
  #   The version was declared.
  def test_version_declared()
    refute_nil(::DataLibrary::VERSION)
  end

  # setup().
  # @abstract
  #   Set fixtures.
  def setup()
    @x1_data_0 = {}
  end

  # test_raise_error().
  # @abstract
  #   Raising an error.
  def test_raise_error()

    assert_raises(DataError) {
      error = DataError.new()
      if (!DataType.instance?(@x1_data_0))
        raise(error, error.message())
      end
    }

  end

  # teardown().
  # @abstract
  #   Cleanup.
  def teardown()
  end

end

