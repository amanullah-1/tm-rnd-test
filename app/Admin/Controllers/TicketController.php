<?php

namespace App\Admin\Controllers;

use App\Ticket;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Row;

class TicketController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('TICKET MANAGEMENT SYSTEM');
            //$content->description('description');

            $content->body($this->grid());
            $content->row(function(Row $row) {
                $row->column(10, '');
                $row->column(2, '<a href="/admin/tickets/create"class="button btn-success btn-lg">Add New Ticket</a>');
            });
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Ticket Details');
            //$content->description('description');

            $content->body($this->form()->edit($id));


        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Add New Ticket');
            //$content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Ticket::class, function (Grid $grid) {

            //$grid->id('ID')->sortable();
            $grid->ticket_id('Ticket Id');
            $grid->service_number('Service Number');
            $grid->segment_group('Segment Group');
            $grid->product_name('Product Name');
            $grid->ticket_status('Ticket Status');

            // $grid->created_at();
            // $grid->updated_at();
            $grid->disableCreateButton();
            $grid->disablePagination();
            $grid->disableFilter();
            $grid->disableExport();
            $grid->disableRowSelector();
            //$grid->disableActions();
            //$grid->disableRefresh();

        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Ticket::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('ticket_id')->rules('required');
            $form->text('service_number')->rules('required');
            $form->text('segment_group');
            $form->text('product_name');
            $form->text('remark')->rules('required');
            $form->radio('ticket_status')->rules('required')->options(['Processing' => 'Processing', 'Completed'=> 'Completed']);
            //$form->radio('ticket_status')->options(['m' => 'Female', 'f'=> 'Male'])->default('m')->stacked();

            //$form->select('ticket_status')->options(['Processing' => 'Processing', 'Completed' => 'Completed']);
            //$form->text('ticket_status');
            //$form->text('state');
            $form->select('state')->options(['Selangor' => 'Selangor', 'Kuala Lumpur' => 'Kuala Lumpur', 'Perlis'])->rules('required');


            //$form->display('created_at', 'Created At');
            //$form->display('updated_at', 'Updated At');
        });
    }
}
