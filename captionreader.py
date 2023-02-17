import argparse
import glob
import array as arr
  
def main(args):
    # path = "/home/lanzer/training_data/images/50_pixelle"
    if args.src_dir is None:
        print(f'Error - no source directory defined.  use --src_dir=""')
        return
    path = args.src_dir
    ext = args.ext
    files = glob.glob(path + "/*." + ext)
  
    # content
    content = []
  
    for filename in files:
        txtfile = open(filename, "r")
        file_content = txtfile.read()
        content.append(file_content)
        txtfile.close()
  
    # converting content to data frame
    text_output = ''.join(content)
    print(text_output)
    
    if (args.output_file != None):
        txtfile = open(args.output_file, "w")
        txtfile.writelines(text_output)
        txtfile.close()
    

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--src_dir', type=str,
        help='Directory to load images')
    parser.add_argument(
        '--output_file', type=str, default=None,
        help='save output to filename')
    parser.add_argument(
        '--ext', type=str, default='caption',
        help='extension name. default=caption')
    
    args = parser.parse_args()


    main(args)
